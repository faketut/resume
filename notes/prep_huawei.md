数据增强（Data Augmentation）
图像翻转（Flipping）：水平或垂直翻转图像。
旋转（Rotation）：将图像旋转一定的角度。
缩放（Zooming）：放大或缩小图像的一部分。
裁剪（Cropping）：从原始图像中随机裁剪出子图像。
颜色调整（Color Adjustments）：如改变亮度、对比度、饱和度等。
噪声注入（Noise Injection）：向数据中添加噪声以增加训练样本的多样性。
Dropout
Dropout：一种正则化方法，在训练过程中随机“丢弃”一部分神经元（即设置为零），从而防止模型过拟合并提升其泛化能力。
其他常见的技术
Early Stopping：监控验证集上的性能，当性能不再提升时提前终止训练，避免过拟合。
L1/L2 Regularization：通过向损失函数添加权重系数的绝对值或平方和来限制模型复杂度，减少过拟合风险。
Batch Normalization：通过对小批次数据进行归一化处理来加速训练过程并稳定梯度估计。
Ensemble Methods：如Bagging、Boosting等，通过组合多个模型的预测结果来改善整体模型的性能。
Mixup：一种数据增强方法，通过线性插值的方式创建新的训练样本。
Label Smoothing：一种正则化技术，通过软化标签来缓解过拟合问题。
Gradient Clipping：用于解决梯度爆炸问题的一种方法，通过设定阈值来限制梯度的最大值。

MSE: 模型预测值与真实值之间差异的平方的平均值。
Cross-Entropy Loss: 模型输出的概率分布与真实标签的概率分布之间的差异。

