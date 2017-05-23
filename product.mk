#
# Copyright (C) 2017 Dan Cartier (NoSpamDan)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Add in some extra optional packages.  In the ROM, this typically will go in
# vendor/extra.

# Extra Optional packages
PRODUCT_PACKAGES += \
    ThemeManager \
    OmsBackend

PRODUCT_PACKAGES += \
    SnapdragonMusic \
    SnapdragonGallery \
    Mms \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_api \
    rcs_service_api.xml

PRODUCT_COPY_FILES += \
    vendor/extra/prebuilt/65theme:system/etc/init.d/65theme

ifneq ($(TARGET_ARCH),)
$(call inherit-product-if-exists, vendor/gapps/$(TARGET_ARCH)/$(TARGET_ARCH)-vendor.mk)
endif
