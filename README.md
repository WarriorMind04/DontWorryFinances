# Finance AI Assistant

A SwiftUI iOS app that helps users manage their finances using AI-generated insights and dynamic dashboards.

---

## 🚀 Features

- **AI-driven prompts**: Enter anything related to your finances, budgets, or expenses, and the AI generates a structured dashboard.  
- **Dynamic UI**: Components like expense summaries, savings goals, charts, and insights are rendered automatically.  
- **Editable entries**: Users can edit both prompts and AI responses.  
- **Persistent storage**: Data is stored locally using SwiftData.  
- **Mock & live API support**: Work with local mock data or connect to a secure backend API.

---

## 🖥 Architecture

- **Frontend**: SwiftUI, SwiftData  
- **Backend**: Python + Flask, deployed on Render  
- **AI Integration**: Google Gemini API  

The app communicates with the backend via a secure endpoint. The backend handles prompts, calls the Gemini API, and returns structured JSON for the UI.

---

## 📦 Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/finance-ai-assistant.git
cd finance-ai-assistant

```
2.	Open the project in Xcode.
3.	Add your .env or secure API key configuration (Gemini API) for backend communication.
4.	Run the project on your iPhone or iPad simulator.

## 📝 Usage
1.	Open the app and tap New Prompt.
2.	Describe your finances (expenses, budgets, or goals).
3.	Hit Generate — the AI will produce a dynamic dashboard.
4.	Edit or save the response if needed.

## 🛠 Dependencies
- SwiftUI
- SwiftData
- Charts (for bar and pie charts)
- Combine (for ObservableObjects & async handling)
- Python Flask (backend)

⸻

## ⚠️ Notes
- Gemini API has rate limits — use mock data during development to avoid hitting quotas.
- The app currently supports iPhone and iPad layouts.

⸻

## 📌 Future Improvements
- Editable AI responses in chat-style history
- Social challenges for saving
- More advanced visualizations and insights
- Full offline mode

⸻

## 📄 License

MIT License. See LICENSE￼ for details.
