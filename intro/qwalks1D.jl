function evolution(t, a, b, ap, bp, size)
    for n in 2:size-1
        a[n] = (ap[n-1] + bp[n-1]) / sqrt(2)
        b[n] = (ap[n+1] - bp[n+1]) / sqrt(2)
    end
    for n in 1:size
        ap[n] = a[n]
        bp[n] = b[n]
    end
end


function p_t_n(a, b, p)
    """
    calculates the p(n,t)
    """
    # make a change that you do not have to do all the 
    # calculations every time
    for i in eachindex(a)
        p[i] = abs(a[i])*abs(a[i]) + abs(b[i])*abs(b[i])
    end
end

function prints(a, b, p)
    println("vector a: ", a)
    println("vector b: ", b)
    println("vector p: ", p)
    println()
end

function main()
    size = 15  # It should be an odd number
    init = (size ÷ 2) + 1
    type = Float16
    time = (size ÷ 2)
     
    a = zeros(type, size) 
    a[init] = 1.0
    b = zeros(type, size)
    ap = zeros(type, size) 
    ap[init] = 1.0
    bp = zeros(type, size)
    p = zeros(type, size)
    
    p_t_n(a, b, p)
    println("\np0: $p")

    for t in 1:time
        evolution(t, a, b, ap, bp, size)
        p_t_n(a, b, p)
        println("\np$t: $p")
    end
end

main()













