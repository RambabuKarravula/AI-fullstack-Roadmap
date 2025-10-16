# PowerShell script to create complete folder structure for AI Full Stack Roadmap

$baseDir = "c:\Users\shrav\OneDrive\Desktop\Roadmap"

# Phase 2: Frontend Foundations (21 days)
$phase2Days = @(
    "Week-01-Web-Fundamentals\Day-01-HTML-Basics",
    "Week-01-Web-Fundamentals\Day-02-CSS-Fundamentals",
    "Week-01-Web-Fundamentals\Day-03-Flexbox-Grid",
    "Week-01-Web-Fundamentals\Day-04-JavaScript-Core",
    "Week-01-Web-Fundamentals\Day-05-JS-DOM-Events",
    "Week-01-Web-Fundamentals\Day-06-Modern-JS-ES6",
    "Week-01-Web-Fundamentals\Day-07-TypeScript-Intro",
    "Week-02-React-Vite\Day-08-React-Setup-Vite",
    "Week-02-React-Vite\Day-09-Components-Props",
    "Week-02-React-Vite\Day-10-State-Hooks",
    "Week-02-React-Vite\Day-11-Conditional-Rendering",
    "Week-02-React-Vite\Day-12-Lists-Keys",
    "Week-02-React-Vite\Day-13-Forms-Input",
    "Week-02-React-Vite\Day-14-Project-Portfolio-Website",
    "Week-03-Advanced-React\Day-15-useEffect-API-Calls",
    "Week-03-Advanced-React\Day-16-React-Router",
    "Week-03-Advanced-React\Day-17-Context-API",
    "Week-03-Advanced-React\Day-18-Styling-Tailwind",
    "Week-03-Advanced-React\Day-19-UI-Libraries-Icons",
    "Week-03-Advanced-React\Day-20-Project-UPS-Dashboard",
    "Week-03-Advanced-React\Day-21-Final-Deployment"
)

foreach ($day in $phase2Days) {
    $path = Join-Path $baseDir "Phase-02-Frontend-Foundations\$day"
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Write-Host "Created: $path"
}

# Phase 3: Backend Engineering (21 days)
$phase3Days = @(
    "Week-01-FastAPI-Foundations\Day-01-Environment-Setup",
    "Week-01-FastAPI-Foundations\Day-02-FastAPI-Basics",
    "Week-01-FastAPI-Foundations\Day-03-Request-Response-Models",
    "Week-01-FastAPI-Foundations\Day-04-CRUD-InMemory",
    "Week-01-FastAPI-Foundations\Day-05-Dependency-Injection",
    "Week-01-FastAPI-Foundations\Day-06-Error-Handling",
    "Week-01-FastAPI-Foundations\Day-07-Project-Task-Manager-API",
    "Week-02-Databases-ORM\Day-08-SQL-Basics",
    "Week-02-Databases-ORM\Day-09-SQLAlchemy-Intro",
    "Week-02-Databases-ORM\Day-10-CRUD-SQLAlchemy",
    "Week-02-Databases-ORM\Day-11-Database-Connection",
    "Week-02-Databases-ORM\Day-12-Pydantic-DB-Models",
    "Week-02-Databases-ORM\Day-13-Relationships-Joins",
    "Week-02-Databases-ORM\Day-14-Project-Leads-Management-API",
    "Week-03-Authentication-Deployment\Day-15-JWT-Authentication",
    "Week-03-Authentication-Deployment\Day-16-Environment-Config",
    "Week-03-Authentication-Deployment\Day-17-Middleware-Logging",
    "Week-03-Authentication-Deployment\Day-18-Testing-APIs",
    "Week-03-Authentication-Deployment\Day-19-Docker-Basics",
    "Week-03-Authentication-Deployment\Day-20-Deployment",
    "Week-03-Authentication-Deployment\Day-21-Project-Business-Leads-API"
)

foreach ($day in $phase3Days) {
    $path = Join-Path $baseDir "Phase-03-Backend-Engineering\$day"
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Write-Host "Created: $path"
}

# Phase 4: Cloud & DevOps (21 days)
$phase4Days = @(
    "Week-01-Git-Version-Control\Day-01-Git-Setup",
    "Week-01-Git-Version-Control\Day-02-Basic-Commands",
    "Week-01-Git-Version-Control\Day-03-Branching-Merging",
    "Week-01-Git-Version-Control\Day-04-Remote-Repos-GitHub",
    "Week-01-Git-Version-Control\Day-05-Gitignore-SSH-Keys",
    "Week-01-Git-Version-Control\Day-06-Collaboration-Basics",
    "Week-01-Git-Version-Control\Day-07-Project-Versioned-API-Repo",
    "Week-02-Hosting\Day-08-Frontend-Deploy-Vercel",
    "Week-02-Hosting\Day-09-Firebase-Intro",
    "Week-02-Hosting\Day-10-Firebase-Hosting",
    "Week-02-Hosting\Day-11-Backend-Deploy-Render",
    "Week-02-Hosting\Day-12-Connect-Frontend-Backend",
    "Week-02-Hosting\Day-13-Environment-Variables",
    "Week-02-Hosting\Day-14-Project-Live-Lead-Dashboard",
    "Week-03-DevOps-Automation\Day-15-CICD-Intro",
    "Week-03-DevOps-Automation\Day-16-GitHub-Actions",
    "Week-03-DevOps-Automation\Day-17-Logs-Monitoring",
    "Week-03-DevOps-Automation\Day-18-Docker-Intro",
    "Week-03-DevOps-Automation\Day-19-API-Testing-PostDeploy",
    "Week-03-DevOps-Automation\Day-20-Documentation-READMEs",
    "Week-03-DevOps-Automation\Day-21-Project-Cloud-Ready-FullStack"
)

foreach ($day in $phase4Days) {
    $path = Join-Path $baseDir "Phase-04-Cloud-DevOps\$day"
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Write-Host "Created: $path"
}

# Phase 5: Statistics & Math (21 days)
$phase5Days = @(
    "Week-01-Descriptive-Stats\Day-01-Statistics-Setup",
    "Week-01-Descriptive-Stats\Day-02-Measures-Spread",
    "Week-01-Descriptive-Stats\Day-03-Data-Visualization",
    "Week-01-Descriptive-Stats\Day-04-Probability-Fundamentals",
    "Week-01-Descriptive-Stats\Day-05-Conditional-Probability",
    "Week-01-Descriptive-Stats\Day-06-Probability-Distributions",
    "Week-01-Descriptive-Stats\Day-07-Project-Sales-Data-Analysis",
    "Week-02-Hypothesis-Testing\Day-08-Correlation-Analysis",
    "Week-02-Hypothesis-Testing\Day-09-Visualization-Relationships",
    "Week-02-Hypothesis-Testing\Day-10-Hypothesis-Testing-Intro",
    "Week-02-Hypothesis-Testing\Day-11-T-tests-Z-tests",
    "Week-02-Hypothesis-Testing\Day-12-Chi-Square-ANOVA",
    "Week-02-Hypothesis-Testing\Day-13-Confidence-Intervals",
    "Week-02-Hypothesis-Testing\Day-14-Project-AB-Test-Analysis",
    "Week-03-Linear-Algebra\Day-15-Vectors-Matrices",
    "Week-03-Linear-Algebra\Day-16-Matrix-Multiplication",
    "Week-03-Linear-Algebra\Day-17-Eigenvalues-Eigenvectors",
    "Week-03-Linear-Algebra\Day-18-Calculus-Basics",
    "Week-03-Linear-Algebra\Day-19-Optimization-Concepts",
    "Week-03-Linear-Algebra\Day-20-Math-for-ML",
    "Week-03-Linear-Algebra\Day-21-Capstone-Statistical-Analysis"
)

foreach ($day in $phase5Days) {
    $path = Join-Path $baseDir "Phase-05-Statistics-Math\$day"
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Write-Host "Created: $path"
}

# Phase 6: Machine Learning (42 days)
$phase6Days = @(
    "Week-01-ML-Fundamentals\Day-01-ML-Environment-Setup",
    "Week-01-ML-Fundamentals\Day-02-Data-Preprocessing",
    "Week-01-ML-Fundamentals\Day-03-Feature-Engineering",
    "Week-01-ML-Fundamentals\Day-04-Train-Test-Split",
    "Week-01-ML-Fundamentals\Day-05-Cross-Validation",
    "Week-01-ML-Fundamentals\Day-06-Evaluation-Metrics",
    "Week-01-ML-Fundamentals\Day-07-Project-Preprocessing-Pipeline",
    "Week-02-Regression\Day-08-Linear-Regression",
    "Week-02-Regression\Day-09-Polynomial-Regression",
    "Week-02-Regression\Day-10-Regularization",
    "Week-02-Regression\Day-11-Regression-Metrics",
    "Week-02-Regression\Day-12-Feature-Importance",
    "Week-02-Regression\Day-13-Hyperparameter-Tuning",
    "Week-02-Regression\Day-14-Project-Price-Predictor",
    "Week-03-Classification\Day-15-Logistic-Regression",
    "Week-03-Classification\Day-16-Decision-Trees",
    "Week-03-Classification\Day-17-Random-Forest",
    "Week-03-Classification\Day-18-Support-Vector-Machines",
    "Week-03-Classification\Day-19-Naive-Bayes",
    "Week-03-Classification\Day-20-Model-Comparison",
    "Week-03-Classification\Day-21-Project-Spam-Classifier",
    "Week-04-Unsupervised-Learning\Day-22-KMeans-Clustering",
    "Week-04-Unsupervised-Learning\Day-23-Hierarchical-Clustering",
    "Week-04-Unsupervised-Learning\Day-24-DBSCAN",
    "Week-04-Unsupervised-Learning\Day-25-PCA",
    "Week-04-Unsupervised-Learning\Day-26-tSNE-UMAP",
    "Week-04-Unsupervised-Learning\Day-27-Anomaly-Detection",
    "Week-04-Unsupervised-Learning\Day-28-Project-Customer-Segmentation",
    "Week-05-Deep-Learning\Day-29-Neural-Networks-Intro",
    "Week-05-Deep-Learning\Day-30-Building-ANN-Keras",
    "Week-05-Deep-Learning\Day-31-Forward-Backpropagation",
    "Week-05-Deep-Learning\Day-32-Loss-Functions-Optimizers",
    "Week-05-Deep-Learning\Day-33-Overfitting-Regularization",
    "Week-05-Deep-Learning\Day-34-Model-Evaluation",
    "Week-05-Deep-Learning\Day-35-Project-MNIST-Classifier",
    "Week-06-CNNs-RNNs-LSTMs\Day-36-Convolutional-Neural-Networks",
    "Week-06-CNNs-RNNs-LSTMs\Day-37-Building-CNN",
    "Week-06-CNNs-RNNs-LSTMs\Day-38-Recurrent-Neural-Networks",
    "Week-06-CNNs-RNNs-LSTMs\Day-39-LSTM-Networks",
    "Week-06-CNNs-RNNs-LSTMs\Day-40-Bidirectional-LSTM",
    "Week-06-CNNs-RNNs-LSTMs\Day-41-Time-Series-Forecasting",
    "Week-06-CNNs-RNNs-LSTMs\Day-42-Capstone-Power-Demand-Forecasting"
)

foreach ($day in $phase6Days) {
    $path = Join-Path $baseDir "Phase-06-Machine-Learning\$day"
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Write-Host "Created: $path"
}

# Phase 7: GenAI & LLMs (42 days)
$phase7Days = @(
    "Week-01-LLM-Fundamentals\Day-01-Intro-LLMs",
    "Week-01-LLM-Fundamentals\Day-02-Transformer-Architecture",
    "Week-01-LLM-Fundamentals\Day-03-Tokenization",
    "Week-01-LLM-Fundamentals\Day-04-Embeddings",
    "Week-01-LLM-Fundamentals\Day-05-Context-Windows",
    "Week-01-LLM-Fundamentals\Day-06-Finetuning-vs-Prompting",
    "Week-01-LLM-Fundamentals\Day-07-Project-Text-Generation",
    "Week-02-LLM-APIs\Day-08-OpenAI-API-Setup",
    "Week-02-LLM-APIs\Day-09-Chat-Completions",
    "Week-02-LLM-APIs\Day-10-Google-Gemini-API",
    "Week-02-LLM-APIs\Day-11-Anthropic-Claude-API",
    "Week-02-LLM-APIs\Day-12-API-Comparison",
    "Week-02-LLM-APIs\Day-13-Error-Handling-RateLimits",
    "Week-02-LLM-APIs\Day-14-Project-Multi-Model-Chat",
    "Week-03-Prompt-Engineering\Day-15-Prompt-Basics",
    "Week-03-Prompt-Engineering\Day-16-Advanced-Prompting",
    "Week-03-Prompt-Engineering\Day-17-Prompt-Templates",
    "Week-03-Prompt-Engineering\Day-18-Function-Calling",
    "Week-03-Prompt-Engineering\Day-19-JSON-Mode-Structured-Output",
    "Week-03-Prompt-Engineering\Day-20-Prompt-Optimization",
    "Week-03-Prompt-Engineering\Day-21-Project-AI-Data-Extractor",
    "Week-04-LangChain\Day-22-LangChain-Setup",
    "Week-04-LangChain\Day-23-LLMs-Chat-Models",
    "Week-04-LangChain\Day-24-Chains",
    "Week-04-LangChain\Day-25-Memory",
    "Week-04-LangChain\Day-26-Agents-Tools",
    "Week-04-LangChain\Day-27-Output-Parsers",
    "Week-04-LangChain\Day-28-Project-AI-Agent-Tools",
    "Week-05-Vector-DBs-RAG\Day-29-Vector-Embeddings",
    "Week-05-Vector-DBs-RAG\Day-30-FAISS-Setup",
    "Week-05-Vector-DBs-RAG\Day-31-ChromaDB",
    "Week-05-Vector-DBs-RAG\Day-32-RAG-Architecture",
    "Week-05-Vector-DBs-RAG\Day-33-Document-Loaders",
    "Week-05-Vector-DBs-RAG\Day-34-Text-Splitters",
    "Week-05-Vector-DBs-RAG\Day-35-Project-PDF-QA-Chatbot",
    "Week-06-LlamaIndex-Deployment\Day-36-LlamaIndex-Intro",
    "Week-06-LlamaIndex-Deployment\Day-37-Data-Connectors",
    "Week-06-LlamaIndex-Deployment\Day-38-Advanced-RAG",
    "Week-06-LlamaIndex-Deployment\Day-39-Multi-Document-QA",
    "Week-06-LlamaIndex-Deployment\Day-40-Deployment-FastAPI",
    "Week-06-LlamaIndex-Deployment\Day-41-Streamlit-Dashboard",
    "Week-06-LlamaIndex-Deployment\Day-42-Capstone-Business-Intelligence-Assistant"
)

foreach ($day in $phase7Days) {
    $path = Join-Path $baseDir "Phase-07-GenAI-LLMs\$day"
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Write-Host "Created: $path"
}

# Phase 8: MLOps (28 days)
$phase8Days = @(
    "Week-01-MLOps-MLflow\Day-01-MLOps-Introduction",
    "Week-01-MLOps-MLflow\Day-02-MLflow-Setup",
    "Week-01-MLOps-MLflow\Day-03-Experiment-Tracking",
    "Week-01-MLOps-MLflow\Day-04-Model-Registry",
    "Week-01-MLOps-MLflow\Day-05-MLflow-Projects",
    "Week-01-MLOps-MLflow\Day-06-MLflow-Models",
    "Week-01-MLOps-MLflow\Day-07-Project-ML-Experiment-Dashboard",
    "Week-02-DagsHub-DVC\Day-08-DagsHub-Introduction",
    "Week-02-DagsHub-DVC\Day-09-DVC-Setup",
    "Week-02-DagsHub-DVC\Day-10-Data-Versioning",
    "Week-02-DagsHub-DVC\Day-11-DVC-Pipelines",
    "Week-02-DagsHub-DVC\Day-12-Remote-Storage",
    "Week-02-DagsHub-DVC\Day-13-DagsHub-Integration",
    "Week-02-DagsHub-DVC\Day-14-Project-Versioned-ML-Pipeline",
    "Week-03-Automation\Day-15-Google-Sheets-API",
    "Week-03-Automation\Day-16-Read-Write-Operations",
    "Week-03-Automation\Day-17-Google-Docs-API",
    "Week-03-Automation\Day-18-Scheduled-Tasks",
    "Week-03-Automation\Day-19-Email-Automation",
    "Week-03-Automation\Day-20-Webhook-Integration",
    "Week-03-Automation\Day-21-Project-Automated-Reporting",
    "Week-04-Model-Deployment\Day-22-Model-Deployment-Basics",
    "Week-04-Model-Deployment\Day-23-Docker-for-ML",
    "Week-04-Model-Deployment\Day-24-GitHub-Actions-ML",
    "Week-04-Model-Deployment\Day-25-Model-Monitoring",
    "Week-04-Model-Deployment\Day-26-Retraining-Pipelines",
    "Week-04-Model-Deployment\Day-27-AB-Testing-Models",
    "Week-04-Model-Deployment\Day-28-Capstone-Production-ML-System"
)

foreach ($day in $phase8Days) {
    $path = Join-Path $baseDir "Phase-08-MLOps\$day"
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Write-Host "Created: $path"
}

# Phase 9: Portfolio & Real Projects (42 days)
$phase9Days = @(
    "Week-01-Product-Thinking\Day-01-AI-Product-Mindset",
    "Week-01-Product-Thinking\Day-02-User-Centric-Design",
    "Week-01-Product-Thinking\Day-03-System-Architecture",
    "Week-01-Product-Thinking\Day-04-Tech-Stack-Selection",
    "Week-01-Product-Thinking\Day-05-Project-Planning",
    "Week-01-Product-Thinking\Day-06-Documentation-Planning",
    "Week-01-Product-Thinking\Day-07-Project-Kickoff",
    "Week-02-Capstone-1\Day-08-Project-Setup",
    "Week-02-Capstone-1\Day-09-PDF-Processing-Backend",
    "Week-02-Capstone-1\Day-10-LLM-Integration",
    "Week-02-Capstone-1\Day-11-Database-Design",
    "Week-02-Capstone-1\Day-12-Frontend-Dashboard",
    "Week-02-Capstone-1\Day-13-Export-Analytics",
    "Week-02-Capstone-1\Day-14-Deploy-Document",
    "Week-03-Capstone-2\Day-15-Dashboard-Architecture",
    "Week-03-Capstone-2\Day-16-Data-Pipeline",
    "Week-03-Capstone-2\Day-17-ML-Integration",
    "Week-03-Capstone-2\Day-18-Realtime-Updates",
    "Week-03-Capstone-2\Day-19-Interactive-Visualizations",
    "Week-03-Capstone-2\Day-20-User-Authentication",
    "Week-03-Capstone-2\Day-21-Deploy-Polish",
    "Week-04-Capstone-3\Day-22-RAG-Architecture",
    "Week-04-Capstone-3\Day-23-Document-Processing",
    "Week-04-Capstone-3\Day-24-Vector-Database",
    "Week-04-Capstone-3\Day-25-Conversational-AI",
    "Week-04-Capstone-3\Day-26-Citation-Sources",
    "Week-04-Capstone-3\Day-27-UI-Development",
    "Week-04-Capstone-3\Day-28-Deploy-Test",
    "Week-05-Fine-tuning\Day-29-Finetuning-Basics",
    "Week-05-Fine-tuning\Day-30-Dataset-Preparation",
    "Week-05-Fine-tuning\Day-31-OpenAI-Finetuning",
    "Week-05-Fine-tuning\Day-32-Open-Source-Models",
    "Week-05-Fine-tuning\Day-33-Evaluation-Testing",
    "Week-05-Fine-tuning\Day-34-Deployment",
    "Week-05-Fine-tuning\Day-35-Project-Domain-Specific-Model",
    "Week-06-Portfolio-Branding\Day-36-Portfolio-Design",
    "Week-06-Portfolio-Branding\Day-37-Build-Portfolio-Site",
    "Week-06-Portfolio-Branding\Day-38-GitHub-Optimization",
    "Week-06-Portfolio-Branding\Day-39-LinkedIn-Optimization",
    "Week-06-Portfolio-Branding\Day-40-Technical-Writing",
    "Week-06-Portfolio-Branding\Day-41-Resume-CoverLetter",
    "Week-06-Portfolio-Branding\Day-42-Final-Review"
)

foreach ($day in $phase9Days) {
    $path = Join-Path $baseDir "Phase-09-Portfolio-Projects\$day"
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Write-Host "Created: $path"
}

# Phase 10: Enterprise & Cloud (56 days)
$phase10Days = @(
    "Week-01-Performance-Optimization\Day-01-Code-Optimization",
    "Week-01-Performance-Optimization\Day-02-Model-Optimization",
    "Week-01-Performance-Optimization\Day-03-Caching-Strategies",
    "Week-01-Performance-Optimization\Day-04-Async-Programming",
    "Week-01-Performance-Optimization\Day-05-Database-Optimization",
    "Week-01-Performance-Optimization\Day-06-Load-Testing",
    "Week-01-Performance-Optimization\Day-07-Project-Optimized-ML-API",
    "Week-02-AWS\Day-08-AWS-Account-Setup",
    "Week-02-AWS\Day-09-EC2-Instances",
    "Week-02-AWS\Day-10-S3-Storage",
    "Week-02-AWS\Day-11-RDS-Databases",
    "Week-02-AWS\Day-12-AWS-Lambda",
    "Week-02-AWS\Day-13-API-Gateway",
    "Week-02-AWS\Day-14-Project-Full-AWS-Deployment",
    "Week-03-GCP\Day-15-GCP-Setup",
    "Week-03-GCP\Day-16-Compute-Engine",
    "Week-03-GCP\Day-17-Cloud-Storage",
    "Week-03-GCP\Day-18-BigQuery",
    "Week-03-GCP\Day-19-Vertex-AI",
    "Week-03-GCP\Day-20-Cloud-Run",
    "Week-03-GCP\Day-21-Project-GCP-ML-Platform",
    "Week-04-Docker-Kubernetes\Day-22-Docker-Advanced",
    "Week-04-Docker-Kubernetes\Day-23-Docker-Compose",
    "Week-04-Docker-Kubernetes\Day-24-Kubernetes-Intro",
    "Week-04-Docker-Kubernetes\Day-25-Kubernetes-Setup",
    "Week-04-Docker-Kubernetes\Day-26-K8s-Deployment",
    "Week-04-Docker-Kubernetes\Day-27-Scaling-LoadBalancing",
    "Week-04-Docker-Kubernetes\Day-28-Project-Kubernetes-AI-Platform",
    "Week-05-Security-Compliance\Day-29-API-Security",
    "Week-05-Security-Compliance\Day-30-Data-Encryption",
    "Week-05-Security-Compliance\Day-31-GDPR-Compliance",
    "Week-05-Security-Compliance\Day-32-Logging-Monitoring",
    "Week-05-Security-Compliance\Day-33-Error-Tracking",
    "Week-05-Security-Compliance\Day-34-Audit-Trails",
    "Week-05-Security-Compliance\Day-35-Project-Secure-AI-Platform",
    "Week-06-Automation-Orchestration\Day-36-Apache-Airflow",
    "Week-06-Automation-Orchestration\Day-37-Airflow-ML-Pipelines",
    "Week-06-Automation-Orchestration\Day-38-Prefect",
    "Week-06-Automation-Orchestration\Day-39-Data-Pipelines",
    "Week-06-Automation-Orchestration\Day-40-Monitoring-Workflows",
    "Week-06-Automation-Orchestration\Day-41-Cost-Optimization",
    "Week-06-Automation-Orchestration\Day-42-Project-Automated-ML-Platform",
    "Week-07-SaaS-Monetization\Day-43-SaaS-Business-Model",
    "Week-07-SaaS-Monetization\Day-44-Payment-Integration",
    "Week-07-SaaS-Monetization\Day-45-API-Key-Management",
    "Week-07-SaaS-Monetization\Day-46-Usage-Analytics",
    "Week-07-SaaS-Monetization\Day-47-Customer-Dashboard",
    "Week-07-SaaS-Monetization\Day-48-Email-Marketing",
    "Week-07-SaaS-Monetization\Day-49-Project-AI-SaaS-Platform",
    "Week-08-OpenSource-Capstone\Day-50-OpenSource-Contribution",
    "Week-08-OpenSource-Capstone\Day-51-Technical-Documentation",
    "Week-08-OpenSource-Capstone\Day-52-Community-Building",
    "Week-08-OpenSource-Capstone\Day-53-Conference-Talks",
    "Week-08-OpenSource-Capstone\Day-54-Capstone-Planning",
    "Week-08-OpenSource-Capstone\Day-55-Capstone-Development",
    "Week-08-OpenSource-Capstone\Day-56-Final-Presentation"
)

foreach ($day in $phase10Days) {
    $path = Join-Path $baseDir "Phase-10-Enterprise-Cloud\$day"
    New-Item -ItemType Directory -Path $path -Force | Out-Null
    Write-Host "Created: $path"
}

Write-Host "`nComplete folder structure created successfully!"
Write-Host "Total: 10 Phases, ~50 Weeks, 273 Days"
Write-Host "Ready to organize your learning materials day by day!"
