package common

import "strconv"

func ConvertUintToString(number uint) string {
	return strconv.FormatUint(uint64(number), 10)
}
