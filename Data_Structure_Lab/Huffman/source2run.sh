rm -rf build/
mkdir build
cd build
cmake ..
make
./bin/Huffman /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Huffman/test/source/测试3.wav /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Huffman/test/result/测试3.wav /root/USTC_Compute_Science_Lab/Data_Structure_Lab/Huffman/test/decode/测试3.wav