#!/bin/bash

LIBEDGETPU_RUNTIME_PRIV="$1"
TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR="$2"
TFLITE_ELIXIR_CORAL_LIBEDGETPU_LIBRARIES="$3"
TFLITE_ELIXIR_CORAL_USB_THROTTLE="$4"

mkdir -p "${LIBEDGETPU_RUNTIME_PRIV}"
LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE="throttled"
if [ "${TFLITE_ELIXIR_CORAL_USB_THROTTLE}" = "NO" ]; then
  LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE="direct"
fi
case "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_LIBRARIES}" in
  native*)
    case "$(uname -s)" in
      Darwin*)
        case "$(uname -m)" in
          arm64*)
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/darwin_arm64/libedgetpu.1.0.dylib" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
          ;;
          x86_64*)
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/darwin_x86_64/libedgetpu.1.0.dylib" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
          ;;
          *)
            echo "Darwin $(uname -m) is not supported"
          ;;
        esac
      ;;
      Linux*)
        case "$(uname -m)" in
          aarch64*)
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/aarch64/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
          ;;
          x86_64*)
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/k8/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
          ;;
          armv7l*)
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/armv7a/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
          ;;
          riscv64*)
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/riscv64/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
          ;;
          s390x*)
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/s390x/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
          ;;
          ppc64le*)
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/ppc64el/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
            cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
          ;;
          *)
            echo "Linux $(uname -m) is not supported"
          ;;
        esac
      ;;
      *)
        echo "$(uname -s) is not supported"
      ;;
    esac
  ;;
  aarch64*)
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/aarch64/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
  ;;
  x86_64*)
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/k8/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
  ;;
  k8*)
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/k8/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
  ;;
  armv7l*)
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/armv7a/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
  ;;
  riscv64*)
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/riscv64/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
  ;;
  s390x*)
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/s390x/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
  ;;
  ppc64le*)
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/ppc64el/libedgetpu.so.1.0" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_linux/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
  ;;
  darwin_arm64*)
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/darwin_arm64/libedgetpu.1.0.dylib" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
  ;;
  darwin_x86_64*)
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/${LIBEDGETPU_TFLITE_ELIXIR_CORAL_USB_THROTTLE}/darwin_x86_64/libedgetpu.1.0.dylib" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/edgetpu.h" "${LIBEDGETPU_RUNTIME_PRIV}"
    cp -f "${TFLITE_ELIXIR_CORAL_LIBEDGETPU_UNZIPPED_DIR}_macos/edgetpu_runtime/libedgetpu/edgetpu_c.h" "${LIBEDGETPU_RUNTIME_PRIV}"
  ;;
esac
