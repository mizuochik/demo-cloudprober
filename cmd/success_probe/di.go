package main

import (
	"github.com/keitam0/demo-cloudprober/infra/cloudprober"
	"github.com/keitam0/demo-cloudprober/usecase/success"
)

type DI struct{}

func (di *DI) ProbeService() *success.ProbeService {
	return &success.ProbeService{}
}

func (di *DI) MetricWriter() *cloudprober.MetricWriter {
	return &cloudprober.MetricWriter{}
}
