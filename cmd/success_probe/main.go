package main

func main() {
	di := &DI{}
	ps := di.ProbeService()
	mw := di.MetricWriter()
	mw.Write("success", ps.Probe())
}
