Sebastian Daberdaku, Ph.D.
==========================

---

| [portfolio](https://github.com/sebastiandaberdaku) | [publications](https://scholar.google.com/citations?user=XpyjCaUAAAAJ) | [LinkedIn](https://www.linkedin.com/in/sebastian-daberdaku/) | [Medium](https://medium.com/@sebastiandaberdaku) |
| :-: | :-: | :-: | :-: |

Summary
-------
With over 5 years of experience as a data engineer and a PhD in Information Engineering, I specialize in crafting efficient, scalable, and resilient data pipelines. Proficient in technologies like Spark, Airflow, Python, DataBricks, TrinoDB, Kafka, Debezium, and AWS, I've worked across diverse domains including bioinformatics, clinical informatics, and finance. My research and data science background ensure a rigorous problem-solving approach. I am committed to ongoing learning and staying updated with the latest advancements in data engineering to drive impactful insights.

Experience
----------
### <span>Aug 2023 -- present</span> &diams; <span>Data Engineering Tech Lead @ Cardo AI</span>
- Implemented a **fully automated Change Data Capture (CDC) of ~2k RDS Postgres tables to Delta Lake on AWS** with Kafka, Debezium, Spark Connect and Airflow on EKS, with fully automated monitoring comprised of Grafana Dashboards, Prometheus Rules and Alertmanager.
- Developed a **Helm Chart for deploying cost-effective and stable TrinoDB clusters on EKS with Karpenter**, using EC2 spot instances for the Trino workers, automatic query retry policy, spill-to-disk and Alluxio cache support on NVMe.
- Developed a **multi-account strategy for Cardo AI's AWS environments**, for optimal data segregation, cost accounting, security and scalability.
- Refactored the synchronization process of Cardo AI's structured finance suite ([Equalizer](https://cardoai.com/structured-finance-suite/)) using Airflow, Spark Connect and Delta Lake, enhancing parallelism and scalability.
- Implemented fully-automated deployments of Apache Airflow and Databricks environments with Terraform modules and ArgoCD for various teams in the company, guaranteeing data separation and detailed cost allocation. 
- Developed a **Helm Chart for Spark Connect server and Spark Thrift server**, which can be used concurrently by multiple Apache Spark applications, effectively optimising infrastructure costs and improving the overall developer experience.
- Ensured that the Data Engineering team followed best practices and maintained high-quality code and data pipelines.

### <span>Sep 2022 -- Jul 2023</span> &diams;	 <span>Senior Data Engineer @ Cardo AI</span>
- Refactored the whole Cardo AI Data Engineering infrastructure on the AWS cloud. Implemented a multi-environment setup with automated CI/CD and IaC principles. 
- Developed several Terraform modules for providing complex services to our stakeholders. **Tech stack**: AWS, K8s (EKS, Karpenter, Helm Chart, ArgoCD, Vault) TerraformHub Actions.
- Developed an **on-demand big data processing** solution with Airflow -- Spark -- Delta Lake -- K8s -- Trino, released as an [Apache Airflow provider package](https://github.com/sebastiandaberdaku/apache-airflow-providers-pysparkonk8s). **Tech stack**: K8s, Apache Airflow, Apache Spark, Delta Lake, AWS Glue (as meta-store), and Karpenter.
- Developed and maintained several **ETL pipelines** with Apache Airflow and Databricks. **Tech stack**: Python, Apache Airflow, Databricks, Apache Spark (PySpark), Delta Lake.

### <span>May 2020 -- Aug 2022</span> &diams;	 <span>Senior Data Scientist & Engineer @ Sorint.Tek</span>
- **AWS Data Architect** for the Data Engineering team at InfoCert S.p.A where I developed and improved automated data ingestion processes. **Tech stack**: AWS Infrastructure (CloudFormation), CI/CD, Lambda, RedShift, Kinesis, Glue, RDS, S3, Python, fluentbit.
- **Baggage Carousel Assignment** at the Milan Bergamo Airport. Developed an automatic scheduling algorithm for the optimal assignment of flights to baggage belts in the baggage reclaim area of the airport, Client: SACBO S.p.A. **Tech stack**: Python (OR-Tools, SQLAlchemy), Oracle, Docker.
- **SNIPE** (Sensor Network for Intelligent Predictive Enterprise). Developed an AI enabled IoT system for machinery revamping in foundries to monitor performance and enable predictive maintenance based on [MangroviaIoT](https://www.mangroviaiot.com/), Client: FAE Technology S.p.A. **Tech stack**: Python (scikit-learn), TimescaleDB.
- **ELK SEA**. Developed an analytics platform for anomaly detection and monitoring on the WiFi networks of the Linate and Malpensa airports (Milan, IT), Client: SEA SpA. **Tech stack**: Elasticsearch, Kibana, Logstash, RabbitMQ, Cisco Prime, Python (requests), bash.
- **ELK ML OpenShift**. Developed machine learning models for microservice anomaly detection and root-cause analysis on an OpenShift cluster, Client: Intesa Sanpaolo Group Services S.C.p.A. **Tech stack**: Elasticsearch, Kibana.
- **2Vita-B**. Developed deep-learning models for stress and affect detection from wearable sensor data, Client: Atlantica Digital S.p.A. **Tech stack**: Python, Keras Tensorflow (CNN), scikit-learn, AWS SageMaker.
- **Tech Lead** for [**Safe LTA**](https://developers.infocert.digital/safe-lta/), a cloud-based long-term repository of digital documents, Client: InfoCert S.p.A. **Tech stack**: Java (Spring Boot), Docker, ElasticSearch, Amazon S3, Kong API Gateway, Keycloak, RabbitMQ, SQS, Elastic Kubernetes Service, AWS Architecture (CloudFormation).

### <span>Jan 2016 -- Apr 2020</span> &diams; <span>Postdoctoral Researcher @ University of Padua</span>
- **Data Mining from environmental, genetic and clinical variables in ALS**, Dept. of Information Engineering. 
    - ALS prognosis prediction with machine learning and data mining methods. **Tech stack**: R (bnstruct), R-Shiny, Dynamic Bayesian Networks.
    - Missing data imputation for static and dynamic mixed-type clinical data. **Tech stack**: R (e1071, caret, infotheo).
    - Metagenomics diagnosis for Inflammatory Bowel Disease. **Tech stack**: R, SVM, Randomised Logistic Regression.
- **Evolutionary-based approach for predicting protein interaction sites and residue mutation impact**, Dept. of Comparative Biomedicine and Food Science. 
    - Single-point-mutation effect prediction on metabolic networks with flux balance analysis and machine learning methods. **Tech stack**: Python.
- **Models and algorithms for protein--protein docking**, Dept. of Information Engineering.
    - Protein interface prediction with machine learning methods. **Tech stack**: C++, Python (scikit-learn).
    - Protein surface representation for the docking problem. **Tech stack**: C++ (boost, MPI, Open-MP).
    - Parallel computation of molecular surfaces with MPI/OpenMP. **Tech stack**: C++ (boost, MPI, Open-MP).
    - Protein pocket and cavity identification. **Tech stack**: C++, Python.

### <span>Jan 2013 -- Apr 2020</span> &diams; <span>Lecturer @ University of Padua</span>
- *Computer Engineering Laboratory* course (C programming), B.Sc. in Information Engineering.
- *Foundation of Mathematical Analysis and Probability* course (tutoring), B.Sc. in Biomedical Engineering.
- *Probability and Statistics* course (tutoring), B.Sc. in Mathematics.
- *Embedded Systems Programming* course (tutoring), M.Sc. in Computer Engineering.

Professional Qualifications
---------------------------
- *22/07/2024* &ensp; [Astronomer Certification DAG Authoring for Apache Airflow](https://www.credly.com/badges/cee6799e-a894-4b07-9dcd-76692a018806)
- *11/01/2024* &ensp; [Astronomer Certification for Apache Airflow Fundamentals](https://www.credly.com/badges/184f3897-c798-4494-b67c-10952a2fa147)
- *29/11/2021* &ensp; [AWS Certified Solutions Architect -- Associate](https://www.credly.com/badges/ce36cfb1-e1d5-49fb-9b17-1716044a1aab)
- *19/07/2021* &ensp; [Elastic Certified Analyst](https://certified.elastic.co/48983e79-cd04-42a9-bc27-de286efd2e45)
- *21/01/2013* &ensp; License to practice the profession of *Information Engineer*, University of Padua

Education
---------
### <span>2013 -- 2016</span> &diams; <span>Doctor of Philosophy</span>
- Information Engineering, University of Padua
- Thesis: *Protein contour modelling and computation for complementarity detection and docking*.

### <span>2010 -- 2012</span> &diams; <span>Master's degree</span>
- Computer Engineering, University of Padua
- 110/110 *cum laude*
- Thesis: *DHT-based task allocation in Volunteer Computing*.

### <span>2007 -- 2010</span> &diams; <span>Bachelor's degree</span>
- Computer Engineering, University of Padua
- 110/110 *cum laude*
- Thesis: *PariMulo: Credits*.

Awards and Achievements
-----------------------
- *13/07/2020* &ensp; Winner (Team GiGi) of the ["Metagenomics Diagnosis for IBD Challenge" (MEDIC)](https://www.dei.unipd.it/premiriconoscimenti).
- *21/11/2018* &ensp; Winner of the PeerJ Award for the ["Best Contribution by an Early Career Researcher" @ BBCC2018](https://peerj.com/blog/post/115284881098/congratulations-to-the-first-round-of-peerj-award-winners) for the paper "Identification of protein pockets and cavities by Euclidean Distance Transform".
- *2013 -- 2016* &ensp; Full Ph.D. scholarship, University of Padua.

Personal Data
-------------
I hereby authorize the use of my personal data in accordance with GDPR 2016/679 (General Data Protection Regulation).

Other formats
-------------

| [resume.html](resume.html) | [resume.pdf](resume.pdf) | [resume.docx](resume.docx) | [resume.rtf](resume.rtf) |
| :-: | :-: | :-: | :-: |

---

#### July 28th, 2024
