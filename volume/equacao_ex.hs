oneRoot :: Float -> Float -> Float -> Float
oneRoot a b c = -b/(2.0*a)

twoRoots :: Float -> Float -> Float ->
(Float, Float)
twoRoots a b c = (d-e, d+e)
where
d = -b/(2.0*a)
e = sqrt(b^2-4.0*a*c)/(2.0*a)
