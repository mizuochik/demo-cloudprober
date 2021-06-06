package cloudprober

import "fmt"

type MetricWriter struct {
}

func (mw *MetricWriter) Write(metricName string, metricValue float64) {
	fmt.Printf("%s %f\n", metricName, metricValue)
}
