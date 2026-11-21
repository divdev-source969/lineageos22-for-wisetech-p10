#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# Copyright (C) 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'device/wisephone/p10',
    'hardware/mediatek',
]

blob_fixups: blob_fixups_user_type = {
    # Example:
    # 'vendor/lib/libexample.so': blob_fixup().add_needed('libshim_example.so'),
}

module = ExtractUtilsModule(
    'p10',
    'wisephone',
    blob_fixups=blob_fixups,
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
