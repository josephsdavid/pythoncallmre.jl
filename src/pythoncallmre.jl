module pythoncallmre
using PythonCall

export foo

const foo = PythonCall.pynew() # initially NULL
function __init__()
    pth = dirname(@__DIR__) * "/py"        # Path where the python routines are
    pyimport("sys").path.append(pth)  # append path
    PythonCall.pycopy!(foo, pyimport("foo"))
    return nothing
end

end # module angelicadebug
