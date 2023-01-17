// ignore_for_file: prefer_single_quotes
import 'package:mason/mason.dart';

final flutterFeatureBundle = MasonBundle.fromJson({
    "name": "feature",
    "description": "feature description",
    "vars": [],
    "files": [
        {
            "path": "{{feature_name}}.dart",
            "data": "ZXhwb3J0ICd2aWV3L3t7ZmVhdHVyZV9uYW1lfX1fcGFnZS5kYXJ0JzsKZXhwb3J0ICd2aWV3L3dpZGdldC97e2ZlYXR1cmVfbmFtZX19X3dpZGdldC5kYXJ0JzsK",
            "type": "text"
        },
        {
            "path": "view/widget/{{feature_name}}_widget.dart",
            "data": "aW1wb3J0ICdwYWNrYWdlOmZsdXR0ZXIvbWF0ZXJpYWwuZGFydCc7CgpjbGFzcyB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1XaWRnZXQgZXh0ZW5kcyBTdGF0ZWxlc3NXaWRnZXQgewogIGNvbnN0IHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVdpZGdldCh7CiAgICBLZXk/IGtleSwKICB9KSA6IHN1cGVyKGtleToga2V5KTsKCiAgQG92ZXJyaWRlCiAgV2lkZ2V0IGJ1aWxkKEJ1aWxkQ29udGV4dCBjb250ZXh0KSB7CiAgICByZXR1cm4gY29uc3QgVGV4dCgKICAgICAgJ3t7ZmVhdHVyZV9uYW1lfX0nLAogICAgKTsKICB9Cn0K",
            "type": "text"
        },
        {
            "path": "view/{{feature_name}}_page.dart",
            "data": "aW1wb3J0ICdwYWNrYWdlOmZsdXR0ZXIvbWF0ZXJpYWwuZGFydCc7CmltcG9ydCAncGFja2FnZTpmbHV0dGVyX2Jsb2MvZmx1dHRlcl9ibG9jLmRhcnQnOwppbXBvcnQgJ3BhY2thZ2U6e3twYWNrYWdlX25hbWV9fS9jb3JlL2NvcmUuZGFydCc7CmltcG9ydCAncGFja2FnZTp7e3BhY2thZ2VfbmFtZX19L2ZlYXR1cmUve3tmZWF0dXJlX25hbWV9fS9ibG9jL3t7ZmVhdHVyZV9uYW1lfX1fYmxvYy5kYXJ0JzsKaW1wb3J0ICdwYWNrYWdlOnt7cGFja2FnZV9uYW1lfX0vZmVhdHVyZS97e2ZlYXR1cmVfbmFtZX19L3ZpZXcvd2lkZ2V0L3t7ZmVhdHVyZV9uYW1lfX1fd2lkZ2V0LmRhcnQnOwoKY2xhc3Mge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19UGFnZUJ1aWxkZXIgZXh0ZW5kcyBTdGF0ZWxlc3NXaWRnZXQgewogIGNvbnN0IHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVBhZ2VCdWlsZGVyKHsKICAgIEtleT8ga2V5LAogIH0pIDogc3VwZXIoa2V5OiBrZXkpOwoKICBAb3ZlcnJpZGUKICBXaWRnZXQgYnVpbGQoQnVpbGRDb250ZXh0IGNvbnRleHQpIHsKICAgIHJldHVybiBCbG9jUHJvdmlkZXIoCiAgICAgIGNyZWF0ZTogKGNvbnRleHQpID0+CiAgICAgICAgICBnZXRJdDx7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1CbG9jPigpLi5hZGQoY29uc3Qge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19RXZlbnQuZmV0Y2goKSksCiAgICAgIGNoaWxkOiBCdWlsZGVyKAogICAgICAgIGJ1aWxkZXI6IChjb250ZXh0KSB7CiAgICAgICAgICByZXR1cm4gQmxvY0J1aWxkZXI8e3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19QmxvYywge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19U3RhdGU+KAogICAgICAgICAgICBidWlsZGVyOiAoY29udGV4dCwgc3RhdGUpIHsKICAgICAgICAgICAgICByZXR1cm4gc3RhdGUubWFwKAogICAgICAgICAgICAgICAgbG9hZGVkOiAoc3RhdGUpID0+IGNvbnN0IHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVBhZ2UoKSwKICAgICAgICAgICAgICAgIGxvYWRpbmc6IChzdGF0ZSkgPT4gY29uc3QgQ2VudGVyKAogICAgICAgICAgICAgICAgICBjaGlsZDogQ2lyY3VsYXJQcm9ncmVzc0luZGljYXRvcigpLAogICAgICAgICAgICAgICAgKSwKICAgICAgICAgICAgICApOwogICAgICAgICAgICB9LAogICAgICAgICAgKTsKICAgICAgICB9LAogICAgICApLAogICAgKTsKICB9Cn0KCmNsYXNzIHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVBhZ2UgZXh0ZW5kcyBTdGF0ZWxlc3NXaWRnZXQgewogIGNvbnN0IHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVBhZ2UoewogICAgS2V5PyBrZXksCiAgfSkgOiBzdXBlcihrZXk6IGtleSk7CgoKICBAb3ZlcnJpZGUKICBXaWRnZXQgYnVpbGQoQnVpbGRDb250ZXh0IGNvbnRleHQpIHsKICAgIHJldHVybiBjb25zdCB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1XaWRnZXQoKTsKICB9Cn0K",
            "type": "text"
        },
        {
            "path": "repo/{{feature_name}}_repo.dart",
            "data": "aW1wb3J0ICdwYWNrYWdlOmluamVjdGFibGUvaW5qZWN0YWJsZS5kYXJ0JzsKCkBpbmplY3RhYmxlCmNsYXNzIHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVJlcG8gewogIEZ1dHVyZTxTdHJpbmc+IGdldHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fSgpIGFzeW5jIHsKICAgIHJldHVybiAne3tmZWF0dXJlX25hbWV9fSc7CiAgfQp9Cg==",
            "type": "text"
        },
        {
            "path": "bloc/{{feature_name}}_event.dart",
            "data": "cGFydCBvZiAne3tmZWF0dXJlX25hbWV9fV9ibG9jLmRhcnQnOwoKQGZyZWV6ZWQKY2xhc3Mge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19RXZlbnQgd2l0aCBfJHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fUV2ZW50IHsKICBjb25zdCBmYWN0b3J5IHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fUV2ZW50LmZldGNoKCkgPSBfRmV0Y2g7Cn0K",
            "type": "text"
        },
        {
            "path": "bloc/{{feature_name}}_state.dart",
            "data": "cGFydCBvZiAne3tmZWF0dXJlX25hbWV9fV9ibG9jLmRhcnQnOwoKQGZyZWV6ZWQKY2xhc3Mge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19U3RhdGUgd2l0aCBfJHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVN0YXRlIHsKICBjb25zdCBmYWN0b3J5IHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVN0YXRlLmxvYWRlZChTdHJpbmcge3tmZWF0dXJlX25hbWV9fSkgPSBfTG9hZGVkOwogIGNvbnN0IGZhY3Rvcnkge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19U3RhdGUubG9hZGluZygpID0gX0xvYWRpbmc7Cn0K",
            "type": "text"
        },
        {
            "path": "bloc/{{feature_name}}_bloc.dart",
            "data": "aW1wb3J0ICdwYWNrYWdlOmJsb2MvYmxvYy5kYXJ0JzsKaW1wb3J0ICdwYWNrYWdlOnt7cGFja2FnZV9uYW1lfX0vZmVhdHVyZS97e2ZlYXR1cmVfbmFtZX19L3JlcG8ve3tmZWF0dXJlX25hbWV9fV9yZXBvLmRhcnQnOwppbXBvcnQgJ3BhY2thZ2U6ZnJlZXplZF9hbm5vdGF0aW9uL2ZyZWV6ZWRfYW5ub3RhdGlvbi5kYXJ0JzsKaW1wb3J0ICdwYWNrYWdlOmluamVjdGFibGUvaW5qZWN0YWJsZS5kYXJ0JzsKCnBhcnQgJ3t7ZmVhdHVyZV9uYW1lfX1fYmxvYy5mcmVlemVkLmRhcnQnOwpwYXJ0ICd7e2ZlYXR1cmVfbmFtZX19X2V2ZW50LmRhcnQnOwpwYXJ0ICd7e2ZlYXR1cmVfbmFtZX19X3N0YXRlLmRhcnQnOwoKQGluamVjdGFibGUKY2xhc3Mge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19QmxvYyBleHRlbmRzIEJsb2M8e3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19RXZlbnQsIHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVN0YXRlPiB7CiAge3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19QmxvYyh7CiAgICByZXF1aXJlZCB0aGlzLnJlcG8sCiAgfSkgOiBzdXBlcihjb25zdCB7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1TdGF0ZS5sb2FkaW5nKCkpIHsKICAgIG9uPHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fUV2ZW50PigoZXZlbnQsIGVtaXQpIGFzeW5jIHsKICAgICAgYXdhaXQgZXZlbnQubWFwKAogICAgICAgIGZldGNoOiAoZXZlbnQpID0+IF9mZXRjaChldmVudCwgZW1pdCksCiAgICAgICk7CiAgICB9KTsKICB9CgogIGZpbmFsIHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fVJlcG8gcmVwbzsKCiAgRnV0dXJlIF9mZXRjaChfRmV0Y2ggZXZlbnQsIEVtaXR0ZXI8e3tmZWF0dXJlX25hbWVfY2FwaXRhbGl6ZX19U3RhdGU+IGVtaXQpIGFzeW5jIHsKICAgIGZpbmFsIHt7ZmVhdHVyZV9uYW1lfX0gPSBhd2FpdCByZXBvLmdldHt7ZmVhdHVyZV9uYW1lX2NhcGl0YWxpemV9fSgpOwogICAgZW1pdCh7e2ZlYXR1cmVfbmFtZV9jYXBpdGFsaXplfX1TdGF0ZS5sb2FkZWQoe3tmZWF0dXJlX25hbWV9fSkpOwogIH0KfQo=",
            "type": "text"
        }
    ]
});
