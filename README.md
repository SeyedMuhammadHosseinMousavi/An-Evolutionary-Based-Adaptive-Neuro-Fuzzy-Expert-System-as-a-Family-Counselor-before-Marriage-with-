# An Evolutionary-Based Adaptive Neuro-Fuzzy Expert System as a Family Counselor before Marriage with the Aim of Divorce Rate Reduction

<p align="justify">
This project develops an Evolutionary-Based Adaptive Neuro-Fuzzy Expert System aimed at counseling families before marriage to reduce divorce rates. This README provides an overview of the system components and key concepts used in the project.
</p>


### Link to the paper:
- https://openarchive.nure.ua/entities/publication/689b1260-9627-4462-9c10-1bb40b02351a

## Table of Contents
- [Introduction](#introduction)
- [Adaptive Neuro-Fuzzy Inference System (ANFIS)](#adaptive-neuro-fuzzy-inference-system-anfis)
- [Evolutionary Algorithms](#evolutionary-algorithms)
- [Expert Systems](#expert-systems)
- [Project Structure](#project-structure)
- [Validation and Results](#validation-and-results)
- [Conclusion](#conclusion)

## Introduction
The increasing rate of divorce in both developed and developing countries has prompted the need for proactive solutions. This project integrates evolutionary algorithms with fuzzy logic to develop an expert system that serves as a marriage counselor, capable of predicting marriage success and potentially preventing unsuccessful unions.

## Adaptive Neuro-Fuzzy Inference System (ANFIS)
ANFIS is a hybrid model that combines the principles of neural networks and fuzzy logic, enhancing the system's ability to approximate nonlinear functions. This model:
- Utilizes a set of fuzzy IF-THEN rules which have the capability to learn from the data.
- Is ideal for dealing with uncertainty and modeling the nonlinear relationships typically observed in human behavior.

### Key Components of ANFIS
- **Rule Base:** Contains fuzzy IF-THEN rules.
- **Database:** Defines the membership functions used in the fuzzy rules.
- **Reasoning Mechanism:** Performs the inference operations.
- **Learning Algorithm:** Adjusts the parameters of the membership functions.

## Evolutionary Algorithms
Evolutionary Algorithms (EAs) are a subset of evolutionary computation that simulate natural evolutionary processes, such as mutation, recombination, and selection. They are used in this project for optimization and parameter tuning of the ANFIS.

### Types of Evolutionary Algorithms used:
- **Differential Evolution (DE):** Optimizes real-valued multi-dimensional functions and helps in finding the best cluster centers.
- **Genetic Algorithm (GA):** Mimics natural selection and helps in evolving the population towards an optimal solution.
- **Particle Swarm Optimization (PSO):** Simulates social behavior of species, optimizing solutions by moving around in the search-space.
- **Ant Colony Optimization (ACO):** Inspired by the behavior of ants in finding paths from the colony to food.

## Expert Systems
Expert systems are computer programs that mimic the decision-making ability of a human expert. In this project, the expert system aims to:
- Provide consultations based on inputs related to personal, economic, and social factors.
- Use the trained ANFIS to assess the compatibility of couples and predict the likelihood of a successful marriage.

## Project Structure
- **Data:** Includes datasets from marriage counselors, which describe factors influencing marital success.
- **Models:** Contains the ANFIS and evolutionary algorithms implemented for prediction and optimization.
- **Scripts:** Scripts for training, testing, and evaluating the system.
- **Results:** Validation results and error metrics for assessing the performance of the system.

## Validation and Results
The system is validated using metrics such as Mean Squared Error (MSE) and Root Mean Squared Error (RMSE), ensuring the accuracy and reliability of the predictions.

## Conclusion
The integration of evolutionary algorithms with an adaptive neuro-fuzzy system provides a robust framework for predicting marital success. This project demonstrates the potential of artificial intelligence in addressing social challenges by supporting decision-making in pre-marital counseling.

---
### Please cite:
- Mousavi, Seyed Muhammad Hossein, S. Younes MiriNezhad, and Vyacheslav Lyashenko. "An evolutionary-based adaptive Neuro-fuzzy expert system as a family counselor before marriage with the aim of divorce rate reduction." (2017).
- Mousavi, Seyed Muhammad Hossein, S. Younes MiriNezhad, and Vyacheslav Lyashenko. "An Evolutionary-Based Adaptive Neuro-Fuzzy Expert System as a Family Counselor before Marriage with the Aim of Divorce Rate Reduction." 2nd International Conference on Research Knowledge Base in Computer Engineering and IT, Tehran-Iran, 2017.

