Sebastian Daberdaku, Ph.D. | Head of Platform & Data Engineering @ Cardo AI
==========================

---

| [portfolio](https://github.com/sdaberdaku) | [publications](https://scholar.google.com/citations?user=XpyjCaUAAAAJ) | [LinkedIn](https://www.linkedin.com/in/sebastian-daberdaku/) | [Medium](https://medium.com/@sebastiandaberdaku) |
| :-: | :-: | :-: | :-: |

Summary
-------
Platform and data engineering leader with 6+ years of building cloud data platforms and a PhD in Information Engineering (434 citations, h-index 10). At Cardo AI I lead the platform/infrastructure and data engineering teams behind a multi-tenant structured-finance SaaS: multi-account AWS in the EU and US, 10 EKS clusters, an Apache Iceberg lakehouse served by Trino and Spark, and the GitOps, identity and security layers around them, including the infrastructure controls for its SOC 2 Type 2 audit. I contribute upstream to Trino and Airflow, was nominated as a Trino Champion, and spoke at Trino Summit 2024.

Skills
------
- **Data:** Trino, Apache Spark (Spark Connect), Apache Iceberg, Delta Lake, Apache Airflow, Kafka, Debezium, PostgreSQL / Aurora, Snowflake, PyIceberg, DuckDB, Databricks.
- **Platform:** AWS (multi-account, EKS, Glue, S3, IAM Identity Center), Kubernetes, Karpenter, KEDA, Terraform, ArgoCD, Helm, HashiCorp Vault, Keycloak, Kyverno, GitHub Actions.
- **FinOps:** Savings Plans, Cost and Usage Reports, OpenCost, spot capacity.
- **AI-assisted engineering:** Claude Code, agent skills, MCP, Amazon Bedrock.
- **Observability and security:** Grafana LGTM stack, Prometheus, AWS Security Hub, GuardDuty, WAF, Prowler.
- **Languages:** Python, SQL, Bash, Java, C++, R.

Experience
----------
### <span>Feb 2025 -- present</span> &diams; <span>Head of Platform & Data Engineering @ Cardo AI</span>
- Lead the platform/infrastructure and data engineering teams (**5 engineers**) behind Cardo AI's multi-tenant structured-finance SaaS: **21 AWS accounts in the EU and US** (landing zone extended to the EU in 2025), **10 EKS clusters and 17 tenants**, fully defined as code (Terraform, ArgoCD GitOps, a 38-chart Helm library) so any environment can be rebuilt from Git. Hands-on throughout: 1,790 merged PRs across 54 repositories and 730+ code reviews since 2022.
- Re-platformed the data synchronization of Cardo AI's [structured-finance platform](https://cardoai.com/solutions/by-product/) onto an **Apache Iceberg lakehouse** (S3, AWS Glue, Spark Connect, Trino, Airflow) with incremental silver/gold pipelines, retiring the legacy pipeline after bit-for-bit parity tests. Led the migration from Delta Lake to Iceberg (12,000+ Iceberg tables) and moved 1,754 Glue databases into 16 per-tenant AWS accounts with zero downtime, using a parallel, dry-run-first migration tool.
- Tuned the core Spark sync from plan-level analysis: memory and disk spill from 130 GB + 42 GB to **zero**, shuffle-write time from 253 s to 29 s, a 1.17-billion-row history rescan replaced by a 9-million-row partition read, and Iceberg files compacted from 2,988 × 10.6 MB to ~83 × 383 MB.
- Retired the materialized reporting tables in favour of query-time derivation in Trino, so queries that used to run out of memory now complete. Benchmarked 413 production query shapes, traced the remaining regressions to a 19× cardinality underestimate and rewrote the views to run at or below the tables' cost. Migrated 1,026 stored client SQL definitions across 13 tenants and 4 services with zero differences on 597k parity-checked rows.
- Built an internal **Trino platform Helm chart** that generates catalogs, Vault credentials and access control from a declarative tenant model, replacing ~2,800 lines of hand-written YAML per deployment. Validated the migration by replaying 14M+ access decisions, then ran zero-downtime blue/green Trino upgrades.
- Designed **multi-tenant workload isolation for Trino**: client tags route interactive, batch and AI-agent (MCP) queries into weighted per-tenant resource groups with server-side time limits and an 85% memory gate, sized from 28 days of query-log data, so a single tenant's burst no longer starves the cluster. Cut compute cost with Karpenter spot pools on the cheapest local-NVMe instance type (~20--25% lower hourly price), spill to disk, fault-tolerant spooling on S3 Express One Zone and working KEDA autoscaling.
- Designed **tenants-as-code** in Terraform: one YAML catalog generates databases, Keycloak realms, Trino users, TLS certificates, CDN frontends and VPN routes for every tenant. Shipped it as a zero-downtime refactor (584 state moves, no resource replaced) guarded by plan-time checks and a `terraform test` CI suite.
- Delivered the cloud-infrastructure controls for Cardo AI's **SOC 2 Type 2** audit (Security, Jun 2025 -- Jan 2026), passed with no exceptions: IAM Identity Center SSO in place of IAM users, EKS Pod Identity, multi-realm Keycloak with Google and Microsoft federation, AWS Config, Security Hub, GuardDuty, Prowler and WAF, plus point-in-time restore for the lakehouse (Iceberg time travel) and per-tenant PostgreSQL.
- Upgraded all four Airflow deployments (EU and US, development to production) from Airflow 2 to Airflow 3, trialling it on a parallel Airflow 3 stack before cutting over.
- Set the platform team's engineering standards: design docs, runbooks and architecture pages in the company documentation, stacked pull requests with zero-diff Terraform plans and Helm render diffs as acceptance criteria, and staged dev → staging → production rollouts.
- Introduced AI-assisted development across the platform team: agent context files in 9 core repositories and agent skills that turn runbooks (tenant and service onboarding, Trino user changes) into guided procedures with pre-flight checks, so agents ask for missing inputs instead of guessing and catch misconfigurations before editing. Kept it production-safe through zero-diff Terraform plans, Helm render diffs and staged rollouts.
- Run FinOps for the AWS estate: Savings Plans and instance-mix analysis from the Pricing and Savings Plans APIs, Cost and Usage Reports and Prometheus usage, with an integer-programming optimizer. Plans run at 100% utilization and save 42% of on-demand-equivalent compute spend, with a further ~$10--12k/year identified.

### <span>Aug 2023 -- Jan 2025</span> &diams; <span>Data Engineering Tech Lead @ Cardo AI</span>
- Designed Cardo AI's **multi-account AWS landing zone** on the Well-Architected Framework (shared-VPC networking, infrastructure management, shared and per-customer workloads, artifact repository, log archive, security tooling) and rolled it out in the US in 2024.
- Built centralized observability for EKS clusters across accounts on the **Grafana LGTM stack** (Loki, Grafana, Tempo, Mimir) with storage in the log-archive account, plus immutable, cost-efficient CloudWatch log collection to S3 (subscription filters, Kinesis Firehose) and cross-account monitoring.
- Implemented automated **change data capture with schema evolution for ~800 RDS PostgreSQL tables** into Delta Lake (Strimzi Kafka, Debezium, Schema Registry/Avro, Spark Connect streaming, Airflow on EKS), packaged as an internal library with Prometheus alerts, Grafana dashboards, a self-healing connector DAG and source-vs-lake reconciliation; later open-sourced as kafka2delta.
- Moved **Trino workers onto spot instances** by adding graceful worker shutdown to the official Trino Helm chart (upstream), so workers finish their running tasks before a spot interruption takes the node and fault-tolerant execution on an S3 exchange retries the rest. Added spill to disk, Alluxio cache on NVMe nodes, ARM64 workers and off-hours downscaling.
- Built the data-science platform on EKS with Terraform and ArgoCD: Kubeflow (deployKF), MLflow, shared GPU nodes and Karpenter node pools for workload separation.
- Automated per-team Airflow environments with Terraform modules and ArgoCD, with Kyverno-enforced workload segregation and OpenCost cost allocation; added a shared Spark Connect server and an OpenMetadata data catalog.
- Replaced AWS Client VPN with self-hosted zero-trust access (NetBird, then Firezone) across clusters and accounts, and set up multi-account Terraform CI/CD with GitHub Actions, AWS CodeBuild and self-hosted runners on EKS.

### <span>Sep 2022 -- Jul 2023</span> &diams; <span>Senior Data Engineer @ Cardo AI</span>
- Built Cardo AI's first data engineering platform on EKS as primary author: Trino (OAuth2, TLS, Vault), Airflow, Spark Operator, Superset, Kafka and JupyterHub, delivered with Argo CD.
- Rebuilt the data platform on AWS in 2023 with a reusable Terraform module library (EKS, Karpenter, ArgoCD, Vault, Airflow, Trino), GitOps delivery and dev/prod pipelines with approval gates, then retired the legacy cluster.
- Built on-demand Spark processing on Kubernetes orchestrated by Airflow, using a custom Spark build with a Glue-enabled Hive metastore and Delta Lake; released as internal Airflow providers (Spark-on-Kubernetes operator, IRSA-based Vault secrets backend) and later as the open-source [pysparkonk8s provider](https://github.com/sdaberdaku/apache-airflow-providers-pysparkonk8s).
- Built and maintained ETL pipelines with Airflow, Databricks, PySpark and Delta Lake.

### <span>May 2020 -- Aug 2022</span> &diams; <span>Senior Data Scientist & Engineer @ Sorint.Tek</span>
- **AWS Data Architect** for the data engineering team at InfoCert S.p.A.: automated data ingestion with CloudFormation, Lambda, Redshift, Kinesis, Glue, RDS and S3.
- **Tech Lead** for [Safe LTA](https://developers.infocert.digital/safe-lta/), InfoCert's cloud long-term repository of digital documents (Java Spring Boot, Elasticsearch, S3, Kong, Keycloak, RabbitMQ, SQS, EKS).
- Built an optimal flight-to-baggage-belt scheduling engine for Milan Bergamo Airport, SACBO S.p.A. (Python, OR-Tools).
- Delivered machine learning projects: predictive maintenance for foundry machinery (IoT, scikit-learn, TimescaleDB) for FAE Technology, anomaly detection on the Linate and Malpensa airport WiFi networks (SEA S.p.A.) and on an OpenShift microservice platform (Intesa Sanpaolo) with the Elastic stack, and CNN-based stress detection from wearable sensors (TensorFlow, SageMaker) for Atlantica Digital.

### <span>Jan 2016 -- Apr 2020</span> &diams; <span>Postdoctoral Researcher @ University of Padua</span>
- Machine learning for ALS prognosis (dynamic Bayesian networks) and imputation of mixed-type clinical data (R); co-inventor on a patent application for predicting ALS progression.
- Protein--protein docking: interface prediction with 3D Zernike descriptors and SVMs, and parallel molecular-surface computation in C++ with MPI and OpenMP.
- Mutation-impact prediction on metabolic networks with flux balance analysis (Python), and IBD diagnosis from metagenomics data (winning team of the MEDIC challenge).

### <span>Jan 2013 -- Apr 2020</span> &diams; <span>Lecturer @ University of Padua</span>
- Computer Engineering Laboratory (C programming), B.Sc. in Information Engineering; tutoring in mathematical analysis, probability and statistics, and embedded systems programming.

Open Source
-----------
- **Trino:** 17 merged PRs to the [official Helm charts](https://github.com/trinodb/charts/pulls?q=is%3Apr+author%3Asdaberdaku+is%3Amerged) (KEDA worker autoscaling, graceful worker shutdown, NetworkPolicy, JMX exporter, Trino Gateway) and 3 to [Trino](https://github.com/trinodb/trino/pulls?q=is%3Apr+author%3Asdaberdaku+is%3Amerged) (Delta Lake connector, SQL routines).
- **Apache Airflow:** AWS STS region support for the [HashiCorp Vault provider](https://github.com/apache/airflow/pull/47495).
- **Own projects:** [kafka2delta](https://github.com/sdaberdaku/kafka2delta) (Kafka to Delta Lake streaming, on PyPI), [nodereaper](https://github.com/sdaberdaku/nodereaper) (removes empty and unhealthy Kubernetes nodes), [aws-glue-data-catalog-spark-client](https://github.com/sdaberdaku/aws-glue-data-catalog-spark-client) (AWS Glue Data Catalog as the Spark metastore, Spark 4 included), [wkNNMI](https://cran.r-project.org/package=wkNNMI) (R package on CRAN for k-NN imputation).

Talks and Writing
-----------------
- *2024* &ensp; Trino Summit 2024: *Optimizing Trino on Kubernetes* ([slides](https://sdaberdaku.github.io/optimizing-trino-on-k8s/)).
- Articles in *Towards Data Engineering* on Medium:
    - [Enabling AWS Glue support in Apache Spark 4](https://medium.com/towards-data-engineering/enabling-aws-glue-support-in-apache-spark-4-2c1fca7a7149) (2025)
    - [Centralized AWS CloudWatch log collection to S3](https://medium.com/towards-data-engineering/centralized-aws-cloudwatch-log-collection-to-s3-7f66a066b48b) (2024)
    - [Exploring the Machine Learning capabilities of Trino](https://medium.com/towards-data-engineering/exploring-the-machine-learning-capabilities-of-trino-b35a43a2b1d6) (2024)
    - [Testing Apache Airflow DAGs locally with Testcontainers and LocalStack](https://medium.com/towards-data-engineering/testing-apache-airflow-dags-locally-with-testcontainers-and-localstack-6bca9ff62d61) (2024)
    - [Building a custom Apache Spark Docker image with AWS Glue Data Catalog support as metastore](https://medium.com/towards-data-engineering/building-a-custom-apache-spark-docker-image-with-aws-glue-data-catalog-support-as-metastore-95ef9a709794) (2024)
    - [Performing Delta Table operations in PySpark with Spark Connect](https://medium.com/towards-data-engineering/performing-delta-table-operations-in-pyspark-with-spark-connect-3925b08d4766) (2024)

Selected Publications
---------------------
434 citations, h-index 10 ([Google Scholar](https://scholar.google.com/citations?user=XpyjCaUAAAAJ)).

- *Antibody interface prediction with 3D Zernike descriptors and SVM*. Bioinformatics, 2019.
- *Exploring the potential of 3D Zernike descriptors and SVM for protein--protein interface prediction*. BMC Bioinformatics, 2018.
- *A combined interpolation and weighted k-nearest neighbours approach for the imputation of longitudinal ICU laboratory data*. Journal of Healthcare Informatics Research, 2020.
- *Predicting functional impairment trajectories in amyotrophic lateral sclerosis: a probabilistic, multifactorial model of disease progression*. Journal of Neurology, 2022.
- *Accelerating the computation of triangulated molecular surfaces with OpenMP*. The Journal of Supercomputing, 2019.
- European patent application: *Method for determining a disease progression and survival prognosis for patients with amyotrophic lateral sclerosis* (EP4189705A1, grant intended by the EPO in 2026; international application WO2022018771A1).
- Co-editor and organizing committee member, 16th IEEE CIBCB 2019.

Professional Qualifications
---------------------------
- *09/2025* &ensp; [Astronomer Certification DAG Authoring for Apache Airflow 3](https://www.credly.com/badges/ad3f86d0-abf2-4040-9d21-70c945657aec)
- *09/2025* &ensp; [Astronomer Certification for Apache Airflow 3 Fundamentals](https://www.credly.com/badges/b5caf4c9-ff5c-4a25-89aa-46d4824a356c)
- *22/07/2024* &ensp; [Astronomer Certification DAG Authoring for Apache Airflow](https://www.credly.com/badges/cee6799e-a894-4b07-9dcd-76692a018806)
- *11/01/2024* &ensp; [Astronomer Certification for Apache Airflow Fundamentals](https://www.credly.com/badges/184f3897-c798-4494-b67c-10952a2fa147)
- *29/11/2021* &ensp; [AWS Certified Solutions Architect -- Associate](https://www.credly.com/badges/ce36cfb1-e1d5-49fb-9b17-1716044a1aab) (expired 11/2024)
- *19/07/2021* &ensp; [Elastic Certified Analyst](https://certified.elastic.co/48983e79-cd04-42a9-bc27-de286efd2e45) (expired 07/2023)
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
- *October 2024* &ensp; Trino Champion nomination for the ["several awesome contributions to the Trino Helm Chart"](https://www.starburst.io/community/trino-champions/).
- *13/07/2020* &ensp; Winner (Team GiGi) of the ["Metagenomics Diagnosis for IBD Challenge" (MEDIC)](https://www.dei.unipd.it/premiriconoscimenti).
- *21/11/2018* &ensp; Winner of the PeerJ Award for the ["Best Contribution by an Early Career Researcher" @ BBCC2018](https://peerj.com/blog/post/115284881098/congratulations-to-the-first-round-of-peerj-award-winners) for the paper "Identification of protein pockets and cavities by Euclidean Distance Transform".
- *2013 -- 2016* &ensp; Full Ph.D. scholarship, University of Padua.

Languages
---------
- Italian and Albanian: native.
- English: full professional proficiency.

Personal Data
-------------
I hereby authorize the use of my personal data in accordance with GDPR 2016/679 (General Data Protection Regulation).

Other formats
-------------

| [resume.pdf](resume.pdf) | [resume.docx](resume.docx) |
| :-: | :-: |

---

#### October 2026
