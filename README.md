# MachineLearning with Patterns Based on Lengyel-Epstein model (20200115 ~ 20200730)
- In scientific computing lab, this is my first machinelearning project.  
We aim to present the insight of the classification for pattern images generated from the Turing models using machine learning with feature engineering.  
Our insight is applied to the image data generated from the PDEs using both NN and clustering methods such as k-means and agglomerative.  

## Dataset
### Lengyel–Epstein (LE) model developed to describe the CIMA chemical reaction
 \begin{align}
 \frac{\partial u}{\partial t} &= D_u \Delta u + k_1 \left( v - \frac{uv}{1+v^2} \right), \\
 \frac{\partial v}{\partial t} &= D_v \Delta v + k_2 - v - \frac{4uv}{1+v^2},
 \end{align}  
 
- Patterns in Lengyel-Epstein model created by MATLAB. [[Detail]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/tree/master/Lengyel-Epstein_patterns)  
![patterns](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/pattern.jpg)  

We choice dissimilar patterns for classification
![patterns](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/MD_images/dissimilar_patterns.jpg)  

## Process - Presentation
1. Chemical prepattern and reaction-diffusion models for pigmentation [[20200115]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/1.%2020200115.pdf)  
    : Lengyel-Epstein equation in 1D with MATLAB  
      
2. Creating the pattern images(2D) based on Lengyel-Epstein model with MATLAB [[20200212]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/2.%2020200212.pdf)  
    : To classify 3 dissimilar patterns through a Neural Network  
      
3. Gradient Descent [[20200219]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/3.%2020200219.pdf)  
  
4. Single-Layer Neural Network with Softmax [[20200226]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/4.%2020200226.pdf)  
  
5. CNN(Convolutional Neural Network) [[20200311]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/5.%2020200311.pdf)  
    : Performance of CNN is tremendous, but I want to increase the performance of the single-layer neural network.  
      
6. Gradient feature in affine layer [[20200315]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/6.%2020200315.pdf)  
  
7. Adam regularization [[20200323]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/7.%2020200323.pdf)  
  
8. PCA (Principle Component Analysis) [[20200330]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/8.%2020200330.pdf)  
    : I don't think this will help reduce over-fitting.  
I realized that the number of training data can affect accuracy.  
  
9. Compare 10 cases [[20200413]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/9.%2020200413.pdf)  
    : When classifying images that are not similar, the accuracy of 9th model was good. But not in similar images.  
      
10. Classification of all patterns [[20200427]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/10.%2020200427.pdf)  
    : I thought that similar patterns are mathematically the same ones thus 9th model can't classify it.  
      
11. Complex Pattern in a simple system [[20200504]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/11.%2020200504.pdf)  
    : Pearson's Classification of Gray-Scott System Parameter Values  
      
12. $k$-means clustering [[20200511]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/12.%2020200511.pdf)  

13. Recall [[20200708]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/13.%2020200708.pdf)  
    : Recall the whole process

14. Visualization [[20200708]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/14.%2020200715.pdf)  
    : We use three features (mean of $X$, mean of $\nabla X$, variance of {$X-X^3$}) to visualize all patterns in a two and three-dimension

## Architecture
### 1. Classification  
Single layer Neural Network (NN) is used for the classification of the patterns.  
We train a NN with a soft-max output layer comprising $3$ output nodes.
The forward propagation is written:  
\begin{align}
  A &= \sigma(WX+b), \\
 A &= \sigma(W\nabla X+b), \\
 A &= \sigma(W(X-X^3)+b), \\
  A &= \sigma(W_1X + W_2\nabla X + b), \\
  A &= \sigma(W_1X + W_2(X-X^3) + b), \\
 A &= \sigma(W_1\nabla X + W_2(X-X^3) + b),
 \end{align}
where $\sigma$ is activation function.


## Conclusion
### 1. Classification  
- Dissimilar patterns  
|Feature|Gradient Descent|Adam|Features|Gradient Descent|Adam|  
|---|---|---|---|---|---|  
|$X$|0.36|0.42|& X and $\nabla X$|0.42|0.44|  
|$\nabla X$|0.40|0.36|X and $X-X^3$|0.40|0.36|  
|$X-X^3$|0.44|0.39|$\nabla X$ and $X-X^3$|0.90|0.90|  

[[Detail]](https://github.com/OH-Seoyoung/MachineLearning_with_Patterns_Based_on_Lengyel-Epstein_model/blob/master/Presentation/9.%2020200413.pdf)  


## Reference
Othmer, Hans G., et al. "The intersection of theory and application in elucidating pattern formation in developmental biology." Mathematical modelling of natural phenomena 4.4 (2009): 3-82.
