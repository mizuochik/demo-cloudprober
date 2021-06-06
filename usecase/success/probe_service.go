package success

type ProbeService struct {
}

func (ps *ProbeService) Probe() float64 {
	return 1.0
}
