function tensor_product(A, B)
    C_dims = tuple(size(A)[1]*size(B)[1], size(A)[2]*size(B)[2])
    C = zeros(eltype(A), C_dims)

    for i in 0:(size(C)[1])-1
        for j in 0:(size(C)[2])-1
            C[i+1,j+1] = A[i÷size(A)[1]+1,j÷size(A)[2]+1] * B[(i%size(B)[1])+1,(j%size(B)[2])+1]
        end
    end

    return C
end 


A = [1 2; 1 3]
B = [5 5; 5 5]

println("A = $A")
println("B = $B")
println("Tensor product between A and B:")
C = tensor_product(A,B)
for i in 1:size(C)[1]
    println(C[i, :])
end



