import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.net.URI;
import java.sql.*;
import java.util.*;

public class ChatbotGUI extends JFrame {

    private JTextArea chatArea;
    private JTextField inputField;
    private JButton sendButton;

    // Database credentials
    private static final String URL = "jdbc:mysql://localhost:3306/chatbot_db";
    private static final String USER = "root";
    private static final String PASSWORD = "siri3618";

    // Notes list
    private java.util.List<String> notes = new ArrayList<>();

    // Constructor
    public ChatbotGUI() {
        setTitle("ChatBot Assistant 🤖");
        setSize(600, 500);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new BorderLayout());

        chatArea = new JTextArea();
        chatArea.setEditable(false);
        chatArea.setLineWrap(true);
        chatArea.setWrapStyleWord(true);
        add(new JScrollPane(chatArea), BorderLayout.CENTER);

        inputField = new JTextField();
        sendButton = new JButton("Send");
        JPanel inputPanel = new JPanel(new BorderLayout());
        inputPanel.add(inputField, BorderLayout.CENTER);
        inputPanel.add(sendButton, BorderLayout.EAST);
        add(inputPanel, BorderLayout.SOUTH);

        chatArea.append("🤖 Welcome! Type 'hi' to begin.\n");

        sendButton.addActionListener(e -> sendMessage());
        inputField.addActionListener(e -> sendMessage());

        setVisible(true);
    }

    private void sendMessage() {
        String userInput = inputField.getText().trim();
        if (userInput.isEmpty()) return;

        chatArea.append("You: " + userInput + "\n");
        String response = getResponse(userInput);
        chatArea.append("Bot: " + response + "\n\n");
        inputField.setText("");

        saveChat("User", userInput, response);
    }

    // ---------------- CHATBOT LOGIC ----------------
    private String getResponse(String input) {
        input = input.toLowerCase().trim();
        String response;

        if (input.contains("hi") || input.contains("hello") || input.contains("hey")) {
            return "HEY THERE! HOW R YA FEELIN'? 😊\n\nChoose an option:\n1. Happy\n2. Moody\n3. Confused\n4. Google Search\n5. Set Reminder\n6. Notes\n7. Chat History\n8. Exit";
        }

        switch (input) {
            case "1":
            case "happy":
                response = "That's awesome! Keep smiling 😊";
                break;

            case "2":
            case "moody":
                response = "Oh, sorry to hear that 😔\nTry listening to your favorite music 🎶 or take a short walk 🚶";
                break;

            case "3":
            case "confused":
                response = "Tell me what's confusing you 🤔 Maybe I can help!";
                break;

            case "4":
            case "google":
                openGoogle();
                response = "Opening Google for you...";
                break;

            case "5":
            case "reminder":
                setReminder();
                response = "Got it! Reminder set.";
                break;

            case "6":
            case "notes":
                manageNotes();
                response = "Opened Notes Manager.";
                break;

            case "8":
            case "exit":
                JOptionPane.showMessageDialog(this, "👋 Goodbye! See you soon!");
                System.exit(0);
                return "";

            case "7":
            case "chat history":
                showChatHistory();
                response = "Displayed your chat history!";
                break;

            default:
                response = "Interesting! Tell me more...";
        }

        return response;
    }

    // ------------------- NOTES HANDLER -------------------
    private void manageNotes() {
        String[] options = {"Add Note", "View Notes", "Delete Note", "Back"};
        while (true) {
            int choice = JOptionPane.showOptionDialog(
                    this,
                    "Choose an action for Notes:",
                    "🗒 Notes Menu",
                    JOptionPane.DEFAULT_OPTION,
                    JOptionPane.INFORMATION_MESSAGE,
                    null,
                    options,
                    options[0]
            );

            switch (choice) {
                case 0: // Add
                    String note = JOptionPane.showInputDialog(this, "Enter your note:");
                    if (note != null && !note.isBlank()) {
                        notes.add(note);
                        JOptionPane.showMessageDialog(this, "✅ Note saved!");
                    }
                    break;

                case 1: // View
                    if (notes.isEmpty()) {
                        JOptionPane.showMessageDialog(this, "No notes available.");
                    } else {
                        JOptionPane.showMessageDialog(this, String.join("\n", notes));
                    }
                    break;

                case 2: // Delete
                    if (notes.isEmpty()) {
                        JOptionPane.showMessageDialog(this, "No notes to delete.");
                    } else {
                        String[] noteArray = notes.toArray(new String[0]);
                        String toDelete = (String) JOptionPane.showInputDialog(
                                this,
                                "Select note to delete:",
                                "🗑 Delete Note",
                                JOptionPane.PLAIN_MESSAGE,
                                null,
                                noteArray,
                                noteArray[0]
                        );
                        if (toDelete != null) {
                            notes.remove(toDelete);
                            JOptionPane.showMessageDialog(this, "🗑 Deleted successfully!");
                        }
                    }
                    break;

                case 3: // Back
                case JOptionPane.CLOSED_OPTION:
                    return; // Exit notes menu
            }
        }
    }

    // ------------------- REMINDER -------------------
    private void setReminder() {
        try {
            String msg = JOptionPane.showInputDialog(this, "Enter reminder message:");
            if (msg == null || msg.isBlank()) return;

            int sec = Integer.parseInt(JOptionPane.showInputDialog(this, "Enter time in seconds:"));
            java.util.Timer timer = new java.util.Timer();
            timer.schedule(new java.util.TimerTask() {
                public void run() {
                    JOptionPane.showMessageDialog(null, "⏰ Reminder: " + msg);
                    Toolkit.getDefaultToolkit().beep();
                    timer.cancel();
                }
            }, sec * 1000L);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "❌ Invalid input for reminder!");
        }
    }

    // ------------------- GOOGLE SEARCH -------------------
    private void openGoogle() {
        try {
            String query = JOptionPane.showInputDialog(this, "Enter your search query:");
            if (query == null || query.isBlank()) return;
            String url = "https://www.google.com/search?q=" + query.replace(" ", "+");
            Desktop.getDesktop().browse(new URI(url));
        } catch (Exception e) {
            JOptionPane.showMessageDialog(this, "❌ Could not open browser!");
        }
    }

    // ------------------- SHOW CHAT HISTORY -------------------
    private void showChatHistory() {
        String sql = "SELECT message, response, timestamp FROM chat_history ORDER BY timestamp DESC";
        StringBuilder history = new StringBuilder("📜 Chat History:\n\n");
        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                history.append("🕓 ").append(rs.getTimestamp("timestamp"))
                       .append("\nYou: ").append(rs.getString("message"))
                       .append("\nBot: ").append(rs.getString("response"))
                       .append("\n\n");
            }

            if (history.toString().equals("📜 Chat History:\n\n")) {
                history.append("No previous chats found!");
            }

            JTextArea textArea = new JTextArea(history.toString());
            textArea.setEditable(false);
            textArea.setLineWrap(true);
            textArea.setWrapStyleWord(true);
            JScrollPane scrollPane = new JScrollPane(textArea);
            scrollPane.setPreferredSize(new Dimension(500, 400));
            JOptionPane.showMessageDialog(this, scrollPane, "Chat History", JOptionPane.INFORMATION_MESSAGE);

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, "⚠️ Error fetching chat history: " + e.getMessage());
        }
    }

    // ------------------- DATABASE FUNCTIONS -------------------
    private static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    private static void saveChat(String username, String message, String response) {
        String sql = "INSERT INTO chat_history (username, message, response) VALUES (?, ?, ?)";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, username);
            ps.setString(2, message);
            ps.setString(3, response);
            ps.executeUpdate();
            System.out.println("💾 Chat saved to DB!");
        } catch (SQLException e) {
            System.out.println("⚠️ Could not save chat: " + e.getMessage());
        }
    }

    // ------------------- MAIN -------------------
    public static void main(String[] args) {
        SwingUtilities.invokeLater(ChatbotGUI::new);
    }
}
