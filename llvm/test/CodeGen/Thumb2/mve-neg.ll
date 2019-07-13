; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=thumbv8.1m.main-arm-none-eabi -mattr=+mve -verify-machineinstrs %s -o - | FileCheck %s

define arm_aapcs_vfpcc <16 x i8> @neg_v16i8(<16 x i8> %s1) {
; CHECK-LABEL: neg_v16i8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vneg.s8 q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = sub nsw <16 x i8> zeroinitializer, %s1
  ret <16 x i8> %0
}

define arm_aapcs_vfpcc <8 x i16> @neg_v8i16(<8 x i16> %s1) {
; CHECK-LABEL: neg_v8i16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vneg.s16 q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = sub nsw <8 x i16> zeroinitializer, %s1
  ret <8 x i16> %0
}

define arm_aapcs_vfpcc <4 x i32> @neg_v4i32(<4 x i32> %s1) {
; CHECK-LABEL: neg_v4i32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vneg.s32 q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = sub nsw <4 x i32> zeroinitializer, %s1
  ret <4 x i32> %0
}