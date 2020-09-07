#include "AutoItObject_Internal.au3"
#AutoIt3Wrapper_Run_AU3Check=N

#include-once
; https://github.com/forcedotcom/dataloader/blob/master/windows-dependencies/autoit/Include/Date.au3
#include <Date.au3>

Global Const $__g_DateTime_sTsFormat = '%04d-%02d-%02d %02d:%02d:%02d.%03d'
Global Const $__g_DateTime_sTsPattern = '^(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2}).(\d{3})$'
Global Enum $__g_DateTime_ts_year, $__g_DateTime_ts_month, $__g_DateTime_ts_day, $__g_DateTime_ts_hour, $__g_DateTime_ts_minute, $__g_DateTime_ts_second, $__g_DateTime_ts_millisecond
Global Enum $__g_DateTIme_SUNDAY = 1, $__g_DateTIme_MONDAY, $__g_DateTIme_TUESDAY, $__g_DateTIme_WEDNESDAY, $__g_DateTIme_THURSDAY, $__g_DateTIme_FRIDAY, $__g_DateTIme_SATURDAY

Func DateTime($ts = 'now')
	Local $this = IDispatch()
	$this.ts = Null
	$this.tz = Null
	$this.__defineGetter("year", __Getter__Class_DateTime_year)
	$this.__defineGetter("month", __Getter__Class_DateTime_month)
	$this.__defineGetter("day", __Getter__Class_DateTime_day)
	$this.__defineGetter("dayOfWeek", __Getter__Class_DateTime_dayOfWeek)
	$this.__defineGetter("dayOfWeekIso", __Getter__Class_DateTime_dayOfWeekIso)
	$this.__defineGetter("dayOfYear", __Getter__Class_DateTime_dayOfYear)
	$this.__defineGetter("daysInMonth", __Getter__Class_DateTime_daysInMonth)
	$this.__defineGetter("dst", __Getter__Class_DateTime_dst)
	$this.__defineGetter("hour", __Getter__Class_DateTime_hour)
	$this.__defineGetter("minute", __Getter__Class_DateTime_minute)
	$this.__defineGetter("second", __Getter__Class_DateTime_second)
	$this.__defineGetter("millisecond", __Getter__Class_DateTime_millisecond)
	$this.__defineGetter("timestamp", __Getter__Class_DateTime_timestamp)
	$this.__defineGetter("timezone", __Getter__Class_DateTime_timezone)
	$this.__defineGetter("utc", __Getter__Class_DateTime_utc)
	$this.__defineGetter("weekNumberInMonth", __Getter__Class_DateTime_weekNumberInMonth)
	$this.__defineGetter("weekOfMonth", __Getter__Class_DateTime_weekOfMonth)
	$this.__defineGetter("weekOfYear", __Getter__Class_DateTime_weekOfYear)
	$this.__defineGetter("yearIso", __Getter__Class_DateTime_yearIso)
	$this.__defineSetter("year", __Setter__Class_DateTime_year)
	$this.__defineSetter("month", __Setter__Class_DateTime_month)
	$this.__defineSetter("day", __Setter__Class_DateTime_day)
	$this.__defineSetter("dayOfWeek", __Setter__Class_DateTime_dayOfWeek)
	$this.__defineSetter("dayOfWeekIso", __Setter__Class_DateTime_dayOfWeekIso)
	$this.__defineSetter("dayOfYear", __Setter__Class_DateTime_dayOfYear)
	$this.__defineSetter("daysInMonth", __Setter__Class_DateTime_daysInMonth)
	$this.__defineSetter("dst", __Setter__Class_DateTime_dst)
	$this.__defineSetter("hour", __Setter__Class_DateTime_hour)
	$this.__defineSetter("minute", __Setter__Class_DateTime_minute)
	$this.__defineSetter("second", __Setter__Class_DateTime_second)
	$this.__defineSetter("millisecond", __Setter__Class_DateTime_millisecond)
	$this.__defineSetter("timestamp", __Setter__Class_DateTime_timestamp)
	$this.__defineSetter("timezone", __Setter__Class_DateTime_timezone)
	$this.__defineSetter("utc", __Setter__Class_DateTime_utc)
	$this.__defineSetter("weekNumberInMonth", __Setter__Class_DateTime_weekNumberInMonth)
	$this.__defineSetter("weekOfMonth", __Setter__Class_DateTime_weekOfMonth)
	$this.__defineSetter("weekOfYear", __Setter__Class_DateTime_weekOfYear)
	$this.__defineSetter("yearIso", __Setter__Class_DateTime_yearIso)
	$this.__defineGetter("tsShards", __Class_DateTime_tsShards)
	$this.__defineGetter("add", __Class_DateTime_add)
	$this.__defineGetter("addCenturies", __Class_DateTime_addCenturies)
	$this.__defineGetter("addCentury", __Class_DateTime_addCentury)
	$this.__defineGetter("addDay", __Class_DateTime_addDay)
	$this.__defineGetter("addDays", __Class_DateTime_addDays)
	$this.__defineGetter("addHour", __Class_DateTime_addHour)
	$this.__defineGetter("addHours", __Class_DateTime_addHours)
	$this.__defineGetter("addMinute", __Class_DateTime_addMinute)
	$this.__defineGetter("addMinutes", __Class_DateTime_addMinutes)
	$this.__defineGetter("addMonth", __Class_DateTime_addMonth)
	$this.__defineGetter("addMonthNoOverflow", __Class_DateTime_addMonthNoOverflow)
	$this.__defineGetter("addMonths", __Class_DateTime_addMonths)
	$this.__defineGetter("addMonthsNoOverflow", __Class_DateTime_addMonthsNoOverflow)
	$this.__defineGetter("addMonthsWithOverflow", __Class_DateTime_addMonthsWithOverflow)
	$this.__defineGetter("addMonthWithOverflow", __Class_DateTime_addMonthWithOverflow)
	$this.__defineGetter("addQuarter", __Class_DateTime_addQuarter)
	$this.__defineGetter("addQuarters", __Class_DateTime_addQuarters)
	$this.__defineGetter("addRealHour", __Class_DateTime_addRealHour)
	$this.__defineGetter("addRealHours", __Class_DateTime_addRealHours)
	$this.__defineGetter("addRealMinute", __Class_DateTime_addRealMinute)
	$this.__defineGetter("addRealMinutes", __Class_DateTime_addRealMinutes)
	$this.__defineGetter("addRealSecond", __Class_DateTime_addRealSecond)
	$this.__defineGetter("addRealSeconds", __Class_DateTime_addRealSeconds)
	$this.__defineGetter("addSecond", __Class_DateTime_addSecond)
	$this.__defineGetter("addSeconds", __Class_DateTime_addSeconds)
	$this.__defineGetter("addWeek", __Class_DateTime_addWeek)
	$this.__defineGetter("addWeeks", __Class_DateTime_addWeeks)
	$this.__defineGetter("addWeekday", __Class_DateTime_addWeekday)
	$this.__defineGetter("addWeekdays", __Class_DateTime_addWeekdays)
	$this.__defineGetter("addYear", __Class_DateTime_addYear)
	$this.__defineGetter("addYearNoOverflow", __Class_DateTime_addYearNoOverflow)
	$this.__defineGetter("addYears", __Class_DateTime_addYears)
	$this.__defineGetter("addYearsNoOverflow", __Class_DateTime_addYearsNoOverflow)
	$this.__defineGetter("addYearsWithOverflow", __Class_DateTime_addYearsWithOverflow)
	$this.__defineGetter("addYearWithOverflow", __Class_DateTime_addYearWithOverflow)
	$this.__defineGetter("copy", __Class_DateTime_copy)
	$this.__defineGetter("format", __Class_DateTime_format)
	$this.__defineGetter("startOfDay", __Class_DateTime_startOfDay)
	$this.__defineGetter("endOfDay", __Class_DateTime_endOfDay)
	$this.__defineGetter("setDateTime", __Class_DateTime_setDateTime)
	$this.__defineGetter("setDate", __Class_DateTime_setDate)
	$this.__defineGetter("setTime", __Class_DateTime_setTime)
	$this.__defineGetter("setTimeFromTimeString", __Class_DateTime_setTimeFromTimeString)
	$this.__defineGetter("setTimezone", __Class_DateTime_setTimezone)
	$this.__defineGetter("toDateString", __Class_DateTime_toDateString)
	$this.__defineGetter("toDateTimeString", __Class_DateTime_toDateTimeString)
	$this.__defineGetter("toFormattedDateString", __Class_DateTime_toFormattedDateString)
	$this.__seal()
	__Class_DateTime___construct($this, $ts)
	Return $this
EndFunc

Func __Class_DateTime___construct($this, $ts = 'now')
	;$ts = $ts == 'now' ? _Now() : _DateTimeFormat($ts, 0)
        $ts = $ts == 'now' ? StringFormat($__g_DateTime_sTsFormat, @YEAR, @MON, @MDAY, @HOUR, @MIN, @SEC, @MSEC) : _DateTimeFormat($ts, 0)

        $this.ts = $ts
EndFunc

Func __Getter__Class_DateTime_year($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Return $this.tsShards()[$__g_DateTime_ts_year]
        Return Int(StringMid($this.ts, 1, 4), 1)
EndFunc

Func __Getter__Class_DateTime_month($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Return $this.tsShards()[$__g_DateTime_ts_month]
        Return Int(StringMid($this.ts, 6, 2), 1)
EndFunc

Func __Getter__Class_DateTime_day($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Return $this.tsShards()[$__g_DateTime_ts_day]
        Return Int(StringMid($this.ts, 9, 2), 1)
EndFunc

Func __Getter__Class_DateTime_dayOfWeek($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Local $aShards = $this.tsShards()
        ;_DateDayOfWeek()
        Return _DateToDayOfWeek($aShards[$__g_DateTime_ts_year], $aShards[$__g_DateTime_ts_month], $aShards[$__g_DateTime_ts_day])
EndFunc

Func __Getter__Class_DateTime_dayOfWeekIso($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_dayOfYear($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_daysInMonth($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_dst($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_hour($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Return $this.tsShards()[$__g_DateTime_ts_hour]
        Return Int(StringMid($this.ts, 12, 2), 1)
EndFunc

Func __Getter__Class_DateTime_minute($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Return $this.tsShards()[$__g_DateTime_ts_minute]
        Return Int(StringMid($this.ts, 15, 2), 1)
EndFunc

Func __Getter__Class_DateTime_second($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Return $this.tsShards()[$__g_DateTime_ts_second]
        Return Int(StringMid($this.ts, 18, 2), 1)
EndFunc

Func __Getter__Class_DateTime_millisecond($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Return $this.tsShards()[$__g_DateTime_ts_millisecond]
        Return Int(StringMid($this.ts, 21, 3), 1)
EndFunc

Func __Getter__Class_DateTime_timestamp($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_timezone($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_utc($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_weekNumberInMonth($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_weekOfMonth($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_weekOfYear($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Getter__Class_DateTime_yearIso($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_year($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Local $value = $_oAccessorObject.ret
	Local $aShards = $this.tsShards()
        $this.setDate($value, $aShards[$__g_DateTime_ts_month], $aShards[$__g_DateTime_ts_day])
EndFunc

Func __Setter__Class_DateTime_month($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Local $value = $_oAccessorObject.ret
	Local $aShards = $this.tsShards()
        $this.setDate($aShards[$__g_DateTime_ts_year], $value, $aShards[$__g_DateTime_ts_day])
EndFunc

Func __Setter__Class_DateTime_day($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Local $value = $_oAccessorObject.ret
	Local $aShards = $this.tsShards()
        $this.setDate($aShards[$__g_DateTime_ts_year], $aShards[$__g_DateTime_ts_month], $value)
EndFunc

Func __Setter__Class_DateTime_dayOfWeek($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_dayOfWeekIso($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_dayOfYear($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_daysInMonth($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_dst($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_hour($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Local $value = $_oAccessorObject.ret
	Local $aShards = $this.tsShards()
        $this.setTime($aShards[$value, $aShards[$__g_DateTime_ts_minute], $aShards[$__g_DateTime_ts_second], $aShards[$__g_DateTime_ts_millisecond])
EndFunc

Func __Setter__Class_DateTime_minute($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Local $value = $_oAccessorObject.ret
	Local $aShards = $this.tsShards()
        $this.setTime($aShards[$__g_DateTime_ts_hour], $value, $aShards[$__g_DateTime_ts_second], $aShards[$__g_DateTime_ts_millisecond])
EndFunc

Func __Setter__Class_DateTime_second($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Local $value = $_oAccessorObject.ret
	Local $aShards = $this.tsShards()
        $this.setTime($aShards[$__g_DateTime_ts_hour], $aShards[$__g_DateTime_ts_minute], $value, $aShards[$__g_DateTime_ts_millisecond])
EndFunc

Func __Setter__Class_DateTime_millisecond($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	Local $value = $_oAccessorObject.ret
	Local $aShards = $this.tsShards()
        $this.setTime($aShards[$__g_DateTime_ts_hour], $aShards[$__g_DateTime_ts_minute], $aShards[$__g_DateTime_ts_second], $value)
EndFunc

Func __Setter__Class_DateTime_timestamp($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_timezone($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_utc($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_weekNumberInMonth($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_weekOfMonth($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_weekOfYear($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Setter__Class_DateTime_yearIso($_oAccessorObject)
	Local $this = $_oAccessorObject.parent
	;FIXME
EndFunc

Func __Class_DateTime_tsShards($this)
	$this = $this.parent
	Return StringRegExp($this.ts, $__g_DateTime_sTsPattern, 1)
EndFunc

Func __Class_DateTime_add($this)
	Local $value = $this.arguments.values[0]
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addCenturies($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addCentury($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addDay($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addDays($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addHour($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addHours($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addMinute($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addMinutes($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addMonth($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addMonthNoOverflow($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addMonths($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addMonthsNoOverflow($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addMonthsWithOverflow($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addMonthWithOverflow($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addQuarter($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addQuarters($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addRealHour($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addRealHours($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addRealMinute($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addRealMinutes($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addRealSecond($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addRealSeconds($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addSecond($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addSeconds($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addWeek($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addWeeks($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addWeekday($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addWeekdays($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addYear($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addYearNoOverflow($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addYears($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addYearsNoOverflow($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addYearsWithOverflow($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_addYearWithOverflow($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_copy($this)
	$this = $this.parent
	Local $clone = DateTime()
        $clone.ts = $this.ts
        $clone.tz = $this.tz
        Return $clone
EndFunc

Func __Class_DateTime_format($this)
	$this = $this.parent
	;FIXME: implement
EndFunc

Func __Class_DateTime_startOfDay($this)
	$this = $this.parent
	$this.setTime(0, 0, 0, 0)
EndFunc

Func __Class_DateTime_endOfDay($this)
	$this = $this.parent
	$this.setTime(23, 59, 59, 999)
EndFunc

Func __Class_DateTime_setDateTime($this)
	Local $year = $this.arguments.values[0]
	Local $month = $this.arguments.values[1]
	Local $day = $this.arguments.values[2]
	Local $hour = $this.arguments.values[3]
	Local $minute = $this.arguments.values[4]
	Local $second = $this.arguments.length >= 6 ? $this.arguments.values[5] : 0
	Local $milliseconds = $this.arguments.length >= 7 ? $this.arguments.values[6] : 0
	$this = $this.parent
	$this.setDate($year, $month, $day)
        $this.setTime($hour, $minute, $second, $milliseconds)
EndFunc

Func __Class_DateTime_setDate($this)
	Local $year = $this.arguments.values[0]
	Local $month = $this.arguments.values[1]
	Local $day = $this.arguments.values[2]
	$this = $this.parent
	Local $aShards = $this.tsShards()
        $this.ts = StringFormat($__g_DateTime_sTsFormat, $year, $month, $day, $aShards[$__g_DateTime_ts_hour], $aShards[$__g_DateTime_ts_minute], $aShards[$__g_DateTime_ts_second], $aShards[$__g_DateTime_ts_millisecond])
EndFunc

Func __Class_DateTime_setTime($this)
	Local $hour = $this.arguments.values[0]
	Local $minute = $this.arguments.values[1]
	Local $second = $this.arguments.length >= 3 ? $this.arguments.values[2] : 0
	Local $milliseconds = $this.arguments.length >= 4 ? $this.arguments.values[3] : 0
	$this = $this.parent
	Local $aShards = $this.tsShards()
        $this.ts = StringFormat($__g_DateTime_sTsFormat, $aShards[$__g_DateTime_ts_year], $aShards[$__g_DateTime_ts_month], $aShards[$__g_DateTime_ts_day], $hour, $minute, $second, $milliseconds)
EndFunc

Func __Class_DateTime_setTimeFromTimeString($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_setTimezone($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_toDateString($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_toDateTimeString($this)
	$this = $this.parent
	;FIXME
EndFunc

Func __Class_DateTime_toFormattedDateString($this)
	$this = $this.parent
	;FIXME
EndFunc



$oDateTime = DateTime()

$time = TimerInit()

ConsoleWrite($oDateTime.ts&@CRLF)

$oDateTime.day = 12

ConsoleWrite($oDateTime.ts&@CRLF)

$oDateTime.startOfDay()

ConsoleWrite($oDateTime.ts&@CRLF)

$oDateTime.endOfDay()

ConsoleWrite($oDateTime.ts&@CRLF)

ConsoleWrite(TimerDiff($time)&@CRLF)
