// ignore_for_file: prefer_single_quotes, file_names
import 'package:mason/mason.dart';

final flutterFeatureBundle = MasonBundle.fromJson({
  "name": "feature",
  "description": "feature description",
  "vars": [],
  "files": [
    {
      "path": "bloc\\{{feature_name}}_bloc.dart",
      "data":
          "aW1wb3J0ICdwYWNrYWdlOmJsb2MvYmxvYy5kYXJ0JzsNCmltcG9ydCAncGFja2FnZTp7e3BhY2thZ2VfbmFtZX19L2ZlYXR1cmUve3tmZWF0dXJlX25hbWV9fS9yZXBvL3t7ZmVhdHVyZV9uYW1lfX1fcmVwby5kYXJ0JzsNCmltcG9ydCAncGFja2FnZTpmcmVlemVkX2Fubm90YXRpb24vZnJlZXplZF9hbm5vdGF0aW9uLmRhcnQnOw0KaW1wb3J0ICdwYWNrYWdlOmluamVjdGFibGUvaW5qZWN0YWJsZS5kYXJ0JzsNCg0KcGFydCAne3tmZWF0dXJlX25hbWV9fV9ibG9jLmZyZWV6ZWQuZGFydCc7DQpwYXJ0ICd7e2ZlYXR1cmVfbmFtZX19X2V2ZW50LmRhcnQnOw0KcGFydCAne3tmZWF0dXJlX25hbWV9fV9zdGF0ZS5kYXJ0JzsNCg0KQGluamVjdGFibGUNCmNsYXNzIHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fUJsb2MgZXh0ZW5kcyBCbG9jPHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fUV2ZW50LCB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1TdGF0ZT4gew0KICB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1CbG9jKHsNCiAgICByZXF1aXJlZCB0aGlzLnJlcG8sDQogIH0pIDogc3VwZXIoY29uc3Qge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19U3RhdGUubG9hZGluZygpKSB7DQogICAgb248e3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19RXZlbnQ+KChldmVudCwgZW1pdCkgYXN5bmMgew0KICAgICAgYXdhaXQgZXZlbnQubWFwKA0KICAgICAgICBmZXRjaDogKGV2ZW50KSA9PiBfZmV0Y2goZXZlbnQsIGVtaXQpLA0KICAgICAgKTsNCiAgICB9KTsNCiAgfQ0KDQogIGZpbmFsIHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVJlcG8gcmVwbzsNCg0KICBGdXR1cmUgX2ZldGNoKF9GZXRjaCBldmVudCwgRW1pdHRlcjx7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1TdGF0ZT4gZW1pdCkgYXN5bmMgew0KICAgIGZpbmFsIHt7ZmVhdHVyZV9uYW1lfX0gPSBhd2FpdCByZXBvLmdldHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fSgpOw0KICAgIGVtaXQoe3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19U3RhdGUubG9hZGVkKHt7ZmVhdHVyZV9uYW1lfX0pKTsNCiAgfQ0KfQ0K",
      "type": "text"
    },
    {
      "path": "bloc\\{{feature_name}}_event.dart",
      "data":
          "cGFydCBvZiAne3tmZWF0dXJlX25hbWV9fV9ibG9jLmRhcnQnOw0KDQpAZnJlZXplZA0KY2xhc3Mge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19RXZlbnQgd2l0aCBfJHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fUV2ZW50IHsNCiAgY29uc3QgZmFjdG9yeSB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1FdmVudC5mZXRjaCgpID0gX0ZldGNoOw0KfQ0K",
      "type": "text"
    },
    {
      "path": "bloc\\{{feature_name}}_state.dart",
      "data":
          "cGFydCBvZiAne3tmZWF0dXJlX25hbWV9fV9ibG9jLmRhcnQnOw0KDQpAZnJlZXplZA0KY2xhc3Mge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19U3RhdGUgd2l0aCBfJHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVN0YXRlIHsNCiAgY29uc3QgZmFjdG9yeSB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1TdGF0ZS5sb2FkZWQoU3RyaW5nIHt7ZmVhdHVyZV9uYW1lfX0pID0gX0xvYWRlZDsNCiAgY29uc3QgZmFjdG9yeSB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1TdGF0ZS5sb2FkaW5nKCkgPSBfTG9hZGluZzsNCn0NCg==",
      "type": "text"
    },
    {
      "path": "repo\\{{feature_name}}_repo.dart",
      "data":
          "aW1wb3J0ICdwYWNrYWdlOmluamVjdGFibGUvaW5qZWN0YWJsZS5kYXJ0JzsNCg0KQGluamVjdGFibGUNCmNsYXNzIHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVJlcG8gew0KICBGdXR1cmU8U3RyaW5nPiBnZXR7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX0oKSBhc3luYyB7DQogICAgcmV0dXJuICd7e2ZlYXR1cmVfbmFtZX19JzsNCiAgfQ0KfQ0K",
      "type": "text"
    },
    {
      "path": "view\\widget\\{{feature_name}}_widget.dart",
      "data":
          "aW1wb3J0ICdwYWNrYWdlOmZsdXR0ZXIvbWF0ZXJpYWwuZGFydCc7DQoNCmNsYXNzIHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVdpZGdldCBleHRlbmRzIFN0YXRlbGVzc1dpZGdldCB7DQogIGNvbnN0IHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVdpZGdldCh7DQogICAgS2V5PyBrZXksDQogIH0pIDogc3VwZXIoa2V5OiBrZXkpOw0KDQogIEBvdmVycmlkZQ0KICBXaWRnZXQgYnVpbGQoQnVpbGRDb250ZXh0IGNvbnRleHQpIHsNCiAgICByZXR1cm4gY29uc3QgVGV4dCgNCiAgICAgICd7e2ZlYXR1cmVfbmFtZX19JywNCiAgICApOw0KICB9DQp9DQo=",
      "type": "text"
    },
    {
      "path": "view\\{{feature_name}}_page.dart",
      "data":
          "aW1wb3J0ICdwYWNrYWdlOmZsdXR0ZXIvbWF0ZXJpYWwuZGFydCc7DQppbXBvcnQgJ3BhY2thZ2U6Zmx1dHRlcl9ibG9jL2ZsdXR0ZXJfYmxvYy5kYXJ0JzsNCmltcG9ydCAncGFja2FnZTp7e3BhY2thZ2VfbmFtZX19L2NvcmUvY29yZS5kYXJ0JzsNCmltcG9ydCAncGFja2FnZTp7e3BhY2thZ2VfbmFtZX19L2ZlYXR1cmUve3tmZWF0dXJlX25hbWV9fS9ibG9jL3t7ZmVhdHVyZV9uYW1lfX1fYmxvYy5kYXJ0JzsNCmltcG9ydCAncGFja2FnZTp7e3BhY2thZ2VfbmFtZX19L2ZlYXR1cmUve3tmZWF0dXJlX25hbWV9fS92aWV3L3dpZGdldC97e2ZlYXR1cmVfbmFtZX19X3dpZGdldC5kYXJ0JzsNCg0KY2xhc3Mge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19UGFnZUJ1aWxkZXIgZXh0ZW5kcyBTdGF0ZWxlc3NXaWRnZXQgew0KICBjb25zdCB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1QYWdlQnVpbGRlcih7DQogICAgS2V5PyBrZXksDQogIH0pIDogc3VwZXIoa2V5OiBrZXkpOw0KDQogIEBvdmVycmlkZQ0KICBXaWRnZXQgYnVpbGQoQnVpbGRDb250ZXh0IGNvbnRleHQpIHsNCiAgICByZXR1cm4gQmxvY1Byb3ZpZGVyKA0KICAgICAgY3JlYXRlOiAoY29udGV4dCkgPT4NCiAgICAgICAgICBnZXRJdDx7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1CbG9jPigpLi5hZGQoY29uc3Qge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19RXZlbnQuZmV0Y2goKSksDQogICAgICBjaGlsZDogQnVpbGRlcigNCiAgICAgICAgYnVpbGRlcjogKGNvbnRleHQpIHsNCiAgICAgICAgICByZXR1cm4gQmxvY0J1aWxkZXI8e3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19QmxvYywge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19U3RhdGU+KA0KICAgICAgICAgICAgYnVpbGRlcjogKGNvbnRleHQsIHN0YXRlKSB7DQogICAgICAgICAgICAgIHJldHVybiBzdGF0ZS5tYXAoDQogICAgICAgICAgICAgICAgbG9hZGVkOiAoc3RhdGUpID0+IGNvbnN0IHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVBhZ2UoKSwNCiAgICAgICAgICAgICAgICBsb2FkaW5nOiAoc3RhdGUpID0+IGNvbnN0IENlbnRlcigNCiAgICAgICAgICAgICAgICAgIGNoaWxkOiBDaXJjdWxhclByb2dyZXNzSW5kaWNhdG9yKCksDQogICAgICAgICAgICAgICAgKSwNCiAgICAgICAgICAgICAgKTsNCiAgICAgICAgICAgIH0sDQogICAgICAgICAgKTsNCiAgICAgICAgfSwNCiAgICAgICksDQogICAgKTsNCiAgfQ0KfQ0KDQpjbGFzcyB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1QYWdlIGV4dGVuZHMgU3RhdGVsZXNzV2lkZ2V0IHsNCiAgY29uc3Qge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19UGFnZSh7DQogICAgS2V5PyBrZXksDQogIH0pIDogc3VwZXIoa2V5OiBrZXkpOw0KDQoNCiAgQG92ZXJyaWRlDQogIFdpZGdldCBidWlsZChCdWlsZENvbnRleHQgY29udGV4dCkgew0KICAgIHJldHVybiBjb25zdCB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1XaWRnZXQoKTsNCiAgfQ0KfQ0K",
      "type": "text"
    },
    {
      "path": "{{feature_name}}.dart",
      "data":
          "ZXhwb3J0ICd2aWV3L3t7ZmVhdHVyZV9uYW1lfX1fcGFnZS5kYXJ0JzsNCmV4cG9ydCAndmlldy93aWRnZXQve3tmZWF0dXJlX25hbWV9fV93aWRnZXQuZGFydCc7DQo=",
      "type": "text"
    }
  ]
});
