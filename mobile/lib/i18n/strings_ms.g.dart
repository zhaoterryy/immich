///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsMs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsMs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ms,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ms>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsMs _root = this; // ignore: unused_field

	// Translations
	@override String get about => 'Tentang';
	@override String get account => 'Akaun';
	@override String get account_settings => 'Tetapan Akaun';
	@override String get acknowledge => 'Akui';
	@override String get action => 'Tindakan';
	@override String get actions => 'Tindakan';
	@override String get active => 'Aktif';
	@override String get activity => 'Aktiviti';
	@override String get activity_changed => 'Aktiviti {enabled, select, true {enabled} other {disabled}}';
	@override String get add => 'Tambah';
	@override String get add_a_description => 'Tambah penerangan';
	@override String get add_a_location => 'Tambah lokasi';
	@override String get add_a_name => 'Tambah nama';
	@override String get add_a_title => 'Tambah tajuk';
	@override String get add_exclusion_pattern => 'Tambahkan corak pengecualian';
	@override String get add_import_path => 'Tambahkan laluan import';
	@override String get add_location => 'Tambah lokasi';
	@override String get add_more_users => 'Tambah user lagi';
	@override String get add_partner => 'Tambah rakan';
	@override String get add_path => 'Tambah laluan';
	@override String get add_photos => 'Tambah gambar';
	@override String get add_to => 'Tambah ke...';
	@override String get add_to_album => 'Tambah ke album';
	@override String get add_to_shared_album => 'Tambah ke album yang dikongsi';
	@override String get added_to_archive => 'Tambah ke arkib';
	@override String get added_to_favorites => 'Ditambah pada favorit';
	@override String get added_to_favorites_count => 'Menambahkan {count, number} ke favorit';
	@override late final _TranslationsAdminMs admin = _TranslationsAdminMs._(_root);
}

// Path: admin
class _TranslationsAdminMs extends TranslationsAdminEn {
	_TranslationsAdminMs._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get add_exclusion_pattern_description => 'Tambahkan corak pengecualian. Globbing menggunakan *, **, dan ? disokong. Untuk mengabaikan semua fail dalam mana-mana direktori bernama "Raw", gunakan "**/Raw/**". Untuk mengabaikan semua fail yang berakhir dengan ".tif", gunakan "**/*.tif". Untuk mengabaikan laluan mutlak, gunakan "/path/to/ignore/**".';
	@override String get asset_offline_description => 'Aset pustaka luaran ini tidak lagi ditemui pada cakera dan telah dialihkan ke sampah. Jika fail telah dialihkan dalam pustaka, semak garis masa anda untuk aset baharu yang sepadan. Untuk memulihkan aset ini, sila pastikan bahawa laluan fail di bawah boleh diakses oleh Immich dan mengimbas pustaka.';
	@override String get authentication_settings => 'Tetapan Pengesahan';
	@override String get authentication_settings_description => 'Urus kata laluan, OAuth dan tetapan pengesahan lain';
	@override String get authentication_settings_disable_all => 'Adakah anda pasti mahu melumpuhkan semua kaedah log masuk? Log masuk akan dilumpuhkan sepenuhnya.';
	@override String get authentication_settings_reenable => 'Untuk menghidupkan semula, guna <link>Arahan Pelayan</link>.';
	@override String get background_task_job => 'Tugas Latar Belakang';
	@override String get check_all => 'Tanda Semua';
	@override String get cleared_jobs => 'Kerja telah dibersihkan untuk: {job}';
	@override String get config_set_by_file => 'Konfigurasi kini ditetapkan oleh fail konfigurasi';
	@override String get confirm_delete_library => 'Adakah anda pasti mahu memadamkan {library}?';
	@override String get confirm_delete_library_assets => 'Adakah anda pasti mahu memadamkan pustaka ini? Ini akan memadam {count, plural, one {# aset yang terkandung} other {semua # aset yang terkandung}} daripada Immich dan tidak boleh dibuat asal. Fail akan kekal pada disk.';
	@override String get confirm_email_below => 'Untuk mengesahkan, sila taip "{email}" dibawah';
	@override String get confirm_reprocess_all_faces => 'Adakah anda pasti mahu memproses semula semua wajah? Ini juga akan membersihkan orang bernama.';
	@override String get confirm_user_password_reset => 'Adakah anda pasti mahu menetapkan semula kata laluan {user}?';
	@override String get create_job => 'Cipta tugas';
	@override String get disable_login => 'Lumpuhkan fungsi log masuk';
	@override String get duplicate_detection_job_description => 'Jalankan pembelajaran mesin pada aset untuk mengesan imej yang serupa. Bergantung pada Carian Pintar';
	@override String get exclusion_pattern_description => 'Corak pengecualian membolehkan anda mengabaikan fail dan folder semasa mengimbas pustaka anda. Ini berguna jika anda mempunyai folder yang mengandungi fail yang anda tidak mahu import, seperti fail RAW.';
	@override String get external_library_created_at => 'Pustaka luaran (dicipta pada {date})';
	@override String get external_library_management => 'Pengurusan Perpustakaan Luar';
	@override String get face_detection => 'Pengesanan wajah';
	@override String get face_detection_description => 'Kesan wajah dalam aset menggunakan pembelajaran mesin. Untuk video, hanya lakaran kecil dipertimbangkan. "Segar Semula" memproses semula semua aset. "Tetapkan Semula" juga mengosongkan semua data wajah semasa. "Hilang" baris gilir aset yang belum diproses lagi. Wajah yang dikesan akan beratur untuk Pengecaman Wajah selepas Pengesanan Wajah selesai, menghimpunkannya kepada orang sedia ada atau baharu.';
	@override String get facial_recognition_job_description => 'Kumpulan wajah yang dikesan ke dalam orang. Langkah ini dijalankan selepas Pengesanan Wajah selesai. "Tetapkan semula" mengelompokkan semula semua wajah. "Hilang" jalankan proses pada wajah yang tidak mempunyai orang yang ditetapkan.';
	@override String get failed_job_command => 'Perintah {command} gagal untuk kerja: {job}';
	@override String get force_delete_user_warning => 'AMARAN: Ini akan mengalih keluar pengguna dan semua aset dengan serta-merta. Ia tidak boleh dibuat asal dan fail tidak boleh dipulihkan.';
	@override String get forcing_refresh_library_files => 'Memaksa muat semula semua fail perpustakaan';
	@override String get image_format => 'Format';
	@override String get image_format_description => 'WebP menghasilkan fail yang lebih kecil daripada JPEG, tetapi lebih perlahan untuk mengekod.';
	@override String get image_prefer_embedded_preview => 'Cadangkan pratonton terbenam';
	@override String get image_prefer_embedded_preview_setting_description => 'Gunakan pratonton terbenam dalam foto RAW sebagai input kepada pemprosesan imej apabila tersedia. Cara ini boleh menghasilkan warna yang lebih tepat untuk sesetengah imej, tetapi kualiti pratonton bergantung pada kamera dan imej mungkin mempunyai lebih banyak artifak mampatan.';
	@override String get image_prefer_wide_gamut => 'Cadangkan warna gamut yang luas';
	@override String get image_prefer_wide_gamut_setting_description => 'Gunakan Paparan P3 untuk lakaran kenit. Ini lebih baik mengekalkan kerancakan imej dengan ruang warna yang luas, tetapi imej mungkin kelihatan berbeza pada peranti lama dengan versi penyemak imbas lama. Imej sRGB disimpan sebagai sRGB untuk mengelakkan peralihan warna.';
	@override String get image_preview_description => 'Imej bersaiz sederhana dengan metadata yang dilucutkan, digunakan semasa melihat aset tunggal dan untuk pembelajaran mesin';
	@override String get image_preview_quality_description => 'Kualiti pratonton dari 1-100. Lebih tinggi adalah lebih baik, tetapi menghasilkan fail yang lebih besar dan boleh mengurangkan responsif apl. Menetapkan nilai yang rendah boleh menjejaskan kualiti pembelajaran mesin.';
	@override String get image_preview_title => 'Tetapan Pratonton';
	@override String get image_quality => 'Kualiti';
	@override String get image_resolution => 'Resolusi';
	@override String get image_resolution_description => 'Resolusi yang lebih tinggi boleh meningkatkan ketajaman imej tetapi mengambil masa yang lebih lama untuk mengekod, mempunyai saiz fail yang lebih besar dan boleh mengurangkan responsif apl.';
	@override String get image_settings => 'Tetapan Imej';
	@override String get image_settings_description => 'Urus kualiti dan resolusi imej yang dihasilkan';
	@override String get image_thumbnail_description => 'Lakaran kecil dengan metadata yang dilucutkan, digunakan semasa melihat kumpulan foto seperti garis masa utama';
	@override String get image_thumbnail_quality_description => 'Kualiti lakaran kenit daripada 1-100. Lebih tinggi adalah lebih baik, tetapi menghasilkan fail yang lebih besar dan boleh mengurangkan responsif apl.';
	@override String get image_thumbnail_title => 'Tetapan Lakaran Kenit';
	@override String get job_concurrency => 'Konkurensi {job}';
	@override String get job_created => 'Tugas yang dicipta';
	@override String get job_not_concurrency_safe => 'Konkurensi tugas ini tidak selamat.';
	@override String get job_settings => 'Tetapan Tugas';
	@override String get job_settings_description => 'Urus konkurensi tugas';
	@override String get job_status => 'Status Tugasan';
	@override String get jobs_delayed => '{jobCount, plural, other {# tertangguh}}';
	@override String get jobs_failed => '{jobCount, plural, other {# gagal}}';
	@override String get library_created => 'Pustaka dicipta: {library}';
	@override String get library_cron_expression => 'Ungkapan Cron';
	@override String get library_cron_expression_description => 'Tetapkan selang pengimbasan menggunakan format cron. Untuk maklumat lanjut sila rujuk cth. <link>Crontab Guru</link>';
	@override String get library_cron_expression_presets => 'Pratetap ungkapan Cron';
	@override String get library_deleted => 'Pustaka dipadamkan';
	@override String get library_import_path_description => 'Tentukan folder untuk diimport. Folder ini, termasuk subfolder, akan diimbas untuk imej dan video.';
	@override String get library_scanning => 'Pengimbasan Berkala';
	@override String get library_scanning_description => 'Konfigurasikan pengimbasan perpustakaan berkala';
	@override String get library_scanning_enable_description => 'Dayakan pengimbasan perpustakaan berkala';
	@override String get library_settings => 'Perpustakaan Luaran';
	@override String get library_settings_description => 'Urus tetapan perpustakaan luaran';
	@override String get library_tasks_description => 'Laksanakan tugas perpustakaan';
	@override String get library_watching_enable_description => 'Perhatikan perpustakaan luaran untuk perubahan fail';
	@override String get library_watching_settings => 'Perhati perpustakaan (EKSPERIMEN)';
	@override String get library_watching_settings_description => 'Perhati fail yang diubah secara automatik';
	@override String get logging_enable_description => 'Dayakan pengelogan';
	@override String get logging_level_description => 'Apabila didayakan, tahap log yang hendak digunakan.';
	@override String get logging_settings => 'Log';
	@override String get machine_learning_clip_model => 'Model CLIP';
	@override String get machine_learning_clip_model_description => 'Nama model CLIP disenaraikan <link>di sini</link>. Ambil perhatian bahawa anda mesti menjalankan semula tugas \'Carian Pintar\' untuk semua imej selepas menukar model.';
	@override String get machine_learning_duplicate_detection => 'Pengesanan Pendua';
	@override String get machine_learning_duplicate_detection_enabled => 'Dayakan pengesanan pendua';
	@override String get machine_learning_duplicate_detection_enabled_description => 'Jika dilumpuhkan, aset yang betul-betul serupa masih akan dinyahduakan.';
	@override String get machine_learning_duplicate_detection_setting_description => 'Gunakan pembenaman CLIP untuk mencari kemungkinan pendua';
	@override String get machine_learning_enabled => 'Dayakan pembelajaran mesin';
	@override String get machine_learning_enabled_description => 'Jika dilumpuhkan, semua ciri Pembelajaran Mesin akan dilumpuhkan tanpa mengira tetapan di bawah.';
	@override String get machine_learning_facial_recognition => 'Pengecaman Wajah';
	@override String get machine_learning_facial_recognition_description => 'Mengesan, mengecam dan mengumpulkan wajah dalam imej';
	@override String get machine_learning_facial_recognition_model => 'Model pengecaman wajah';
	@override String get machine_learning_facial_recognition_model_description => 'Model disenaraikan dalam susunan saiz menurun. Model yang lebih besar adalah lebih perlahan dan menggunakan lebih banyak memori, tetapi menghasilkan hasil yang lebih baik. Ambil perhatian bahawa anda mesti menjalankan semula kerja Pengesanan Wajah untuk semua imej apabila menukar model.';
	@override String get machine_learning_facial_recognition_setting => 'Dayakan pengecaman wajah';
	@override String get machine_learning_facial_recognition_setting_description => 'Jika dilumpuhkan, imej tidak akan dikodkan untuk pengecaman wajah dan tidak akan mengisi bahagian Orang dalam halaman Teroka.';
	@override String get machine_learning_max_detection_distance => 'Jarak pengesanan maksimum';
	@override String get machine_learning_max_detection_distance_description => 'Jarak maksimum antara dua imej untuk menganggapnya sebagai pendua, antara 0.001-0.1. Nilai yang lebih tinggi akan mengesan lebih banyak pendua, tetapi mungkin menghasilkan positif palsu.';
	@override String get machine_learning_max_recognition_distance => 'Jarak pengecaman maksimum';
	@override String get machine_learning_max_recognition_distance_description => 'Jarak maksimum antara dua muka untuk dianggap sebagai orang yang sama, antara 0-2. Menurunkan ini boleh menghalang pelabelan dua orang sebagai orang yang sama, manakala menaikkannya boleh menghalang pelabelan orang yang sama sebagai dua orang yang berbeza. Ambil perhatian bahawa adalah lebih mudah untuk menggabungkan dua orang daripada membelah satu orang kepada dua, jadi silap pada bahagian ambang yang lebih rendah apabila boleh.';
	@override String get machine_learning_min_detection_score => 'Skor pengesanan minimum';
	@override String get machine_learning_min_detection_score_description => 'Skor keyakinan minimum untuk wajah dikesan dari 0-1. Nilai yang lebih rendah akan mengesan lebih banyak muka tetapi mungkin menghasilkan positif palsu.';
	@override String get machine_learning_min_recognized_faces => 'Minimum mengenali wajah';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsMs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about': return 'Tentang';
			case 'account': return 'Akaun';
			case 'account_settings': return 'Tetapan Akaun';
			case 'acknowledge': return 'Akui';
			case 'action': return 'Tindakan';
			case 'actions': return 'Tindakan';
			case 'active': return 'Aktif';
			case 'activity': return 'Aktiviti';
			case 'activity_changed': return 'Aktiviti {enabled, select, true {enabled} other {disabled}}';
			case 'add': return 'Tambah';
			case 'add_a_description': return 'Tambah penerangan';
			case 'add_a_location': return 'Tambah lokasi';
			case 'add_a_name': return 'Tambah nama';
			case 'add_a_title': return 'Tambah tajuk';
			case 'add_exclusion_pattern': return 'Tambahkan corak pengecualian';
			case 'add_import_path': return 'Tambahkan laluan import';
			case 'add_location': return 'Tambah lokasi';
			case 'add_more_users': return 'Tambah user lagi';
			case 'add_partner': return 'Tambah rakan';
			case 'add_path': return 'Tambah laluan';
			case 'add_photos': return 'Tambah gambar';
			case 'add_to': return 'Tambah ke...';
			case 'add_to_album': return 'Tambah ke album';
			case 'add_to_shared_album': return 'Tambah ke album yang dikongsi';
			case 'added_to_archive': return 'Tambah ke arkib';
			case 'added_to_favorites': return 'Ditambah pada favorit';
			case 'added_to_favorites_count': return 'Menambahkan {count, number} ke favorit';
			case 'admin.add_exclusion_pattern_description': return 'Tambahkan corak pengecualian. Globbing menggunakan *, **, dan ? disokong. Untuk mengabaikan semua fail dalam mana-mana direktori bernama "Raw", gunakan "**/Raw/**". Untuk mengabaikan semua fail yang berakhir dengan ".tif", gunakan "**/*.tif". Untuk mengabaikan laluan mutlak, gunakan "/path/to/ignore/**".';
			case 'admin.asset_offline_description': return 'Aset pustaka luaran ini tidak lagi ditemui pada cakera dan telah dialihkan ke sampah. Jika fail telah dialihkan dalam pustaka, semak garis masa anda untuk aset baharu yang sepadan. Untuk memulihkan aset ini, sila pastikan bahawa laluan fail di bawah boleh diakses oleh Immich dan mengimbas pustaka.';
			case 'admin.authentication_settings': return 'Tetapan Pengesahan';
			case 'admin.authentication_settings_description': return 'Urus kata laluan, OAuth dan tetapan pengesahan lain';
			case 'admin.authentication_settings_disable_all': return 'Adakah anda pasti mahu melumpuhkan semua kaedah log masuk? Log masuk akan dilumpuhkan sepenuhnya.';
			case 'admin.authentication_settings_reenable': return 'Untuk menghidupkan semula, guna <link>Arahan Pelayan</link>.';
			case 'admin.background_task_job': return 'Tugas Latar Belakang';
			case 'admin.check_all': return 'Tanda Semua';
			case 'admin.cleared_jobs': return 'Kerja telah dibersihkan untuk: {job}';
			case 'admin.config_set_by_file': return 'Konfigurasi kini ditetapkan oleh fail konfigurasi';
			case 'admin.confirm_delete_library': return 'Adakah anda pasti mahu memadamkan {library}?';
			case 'admin.confirm_delete_library_assets': return 'Adakah anda pasti mahu memadamkan pustaka ini? Ini akan memadam {count, plural, one {# aset yang terkandung} other {semua # aset yang terkandung}} daripada Immich dan tidak boleh dibuat asal. Fail akan kekal pada disk.';
			case 'admin.confirm_email_below': return 'Untuk mengesahkan, sila taip "{email}" dibawah';
			case 'admin.confirm_reprocess_all_faces': return 'Adakah anda pasti mahu memproses semula semua wajah? Ini juga akan membersihkan orang bernama.';
			case 'admin.confirm_user_password_reset': return 'Adakah anda pasti mahu menetapkan semula kata laluan {user}?';
			case 'admin.create_job': return 'Cipta tugas';
			case 'admin.disable_login': return 'Lumpuhkan fungsi log masuk';
			case 'admin.duplicate_detection_job_description': return 'Jalankan pembelajaran mesin pada aset untuk mengesan imej yang serupa. Bergantung pada Carian Pintar';
			case 'admin.exclusion_pattern_description': return 'Corak pengecualian membolehkan anda mengabaikan fail dan folder semasa mengimbas pustaka anda. Ini berguna jika anda mempunyai folder yang mengandungi fail yang anda tidak mahu import, seperti fail RAW.';
			case 'admin.external_library_created_at': return 'Pustaka luaran (dicipta pada {date})';
			case 'admin.external_library_management': return 'Pengurusan Perpustakaan Luar';
			case 'admin.face_detection': return 'Pengesanan wajah';
			case 'admin.face_detection_description': return 'Kesan wajah dalam aset menggunakan pembelajaran mesin. Untuk video, hanya lakaran kecil dipertimbangkan. "Segar Semula" memproses semula semua aset. "Tetapkan Semula" juga mengosongkan semua data wajah semasa. "Hilang" baris gilir aset yang belum diproses lagi. Wajah yang dikesan akan beratur untuk Pengecaman Wajah selepas Pengesanan Wajah selesai, menghimpunkannya kepada orang sedia ada atau baharu.';
			case 'admin.facial_recognition_job_description': return 'Kumpulan wajah yang dikesan ke dalam orang. Langkah ini dijalankan selepas Pengesanan Wajah selesai. "Tetapkan semula" mengelompokkan semula semua wajah. "Hilang" jalankan proses pada wajah yang tidak mempunyai orang yang ditetapkan.';
			case 'admin.failed_job_command': return 'Perintah {command} gagal untuk kerja: {job}';
			case 'admin.force_delete_user_warning': return 'AMARAN: Ini akan mengalih keluar pengguna dan semua aset dengan serta-merta. Ia tidak boleh dibuat asal dan fail tidak boleh dipulihkan.';
			case 'admin.forcing_refresh_library_files': return 'Memaksa muat semula semua fail perpustakaan';
			case 'admin.image_format': return 'Format';
			case 'admin.image_format_description': return 'WebP menghasilkan fail yang lebih kecil daripada JPEG, tetapi lebih perlahan untuk mengekod.';
			case 'admin.image_prefer_embedded_preview': return 'Cadangkan pratonton terbenam';
			case 'admin.image_prefer_embedded_preview_setting_description': return 'Gunakan pratonton terbenam dalam foto RAW sebagai input kepada pemprosesan imej apabila tersedia. Cara ini boleh menghasilkan warna yang lebih tepat untuk sesetengah imej, tetapi kualiti pratonton bergantung pada kamera dan imej mungkin mempunyai lebih banyak artifak mampatan.';
			case 'admin.image_prefer_wide_gamut': return 'Cadangkan warna gamut yang luas';
			case 'admin.image_prefer_wide_gamut_setting_description': return 'Gunakan Paparan P3 untuk lakaran kenit. Ini lebih baik mengekalkan kerancakan imej dengan ruang warna yang luas, tetapi imej mungkin kelihatan berbeza pada peranti lama dengan versi penyemak imbas lama. Imej sRGB disimpan sebagai sRGB untuk mengelakkan peralihan warna.';
			case 'admin.image_preview_description': return 'Imej bersaiz sederhana dengan metadata yang dilucutkan, digunakan semasa melihat aset tunggal dan untuk pembelajaran mesin';
			case 'admin.image_preview_quality_description': return 'Kualiti pratonton dari 1-100. Lebih tinggi adalah lebih baik, tetapi menghasilkan fail yang lebih besar dan boleh mengurangkan responsif apl. Menetapkan nilai yang rendah boleh menjejaskan kualiti pembelajaran mesin.';
			case 'admin.image_preview_title': return 'Tetapan Pratonton';
			case 'admin.image_quality': return 'Kualiti';
			case 'admin.image_resolution': return 'Resolusi';
			case 'admin.image_resolution_description': return 'Resolusi yang lebih tinggi boleh meningkatkan ketajaman imej tetapi mengambil masa yang lebih lama untuk mengekod, mempunyai saiz fail yang lebih besar dan boleh mengurangkan responsif apl.';
			case 'admin.image_settings': return 'Tetapan Imej';
			case 'admin.image_settings_description': return 'Urus kualiti dan resolusi imej yang dihasilkan';
			case 'admin.image_thumbnail_description': return 'Lakaran kecil dengan metadata yang dilucutkan, digunakan semasa melihat kumpulan foto seperti garis masa utama';
			case 'admin.image_thumbnail_quality_description': return 'Kualiti lakaran kenit daripada 1-100. Lebih tinggi adalah lebih baik, tetapi menghasilkan fail yang lebih besar dan boleh mengurangkan responsif apl.';
			case 'admin.image_thumbnail_title': return 'Tetapan Lakaran Kenit';
			case 'admin.job_concurrency': return 'Konkurensi {job}';
			case 'admin.job_created': return 'Tugas yang dicipta';
			case 'admin.job_not_concurrency_safe': return 'Konkurensi tugas ini tidak selamat.';
			case 'admin.job_settings': return 'Tetapan Tugas';
			case 'admin.job_settings_description': return 'Urus konkurensi tugas';
			case 'admin.job_status': return 'Status Tugasan';
			case 'admin.jobs_delayed': return '{jobCount, plural, other {# tertangguh}}';
			case 'admin.jobs_failed': return '{jobCount, plural, other {# gagal}}';
			case 'admin.library_created': return 'Pustaka dicipta: {library}';
			case 'admin.library_cron_expression': return 'Ungkapan Cron';
			case 'admin.library_cron_expression_description': return 'Tetapkan selang pengimbasan menggunakan format cron. Untuk maklumat lanjut sila rujuk cth. <link>Crontab Guru</link>';
			case 'admin.library_cron_expression_presets': return 'Pratetap ungkapan Cron';
			case 'admin.library_deleted': return 'Pustaka dipadamkan';
			case 'admin.library_import_path_description': return 'Tentukan folder untuk diimport. Folder ini, termasuk subfolder, akan diimbas untuk imej dan video.';
			case 'admin.library_scanning': return 'Pengimbasan Berkala';
			case 'admin.library_scanning_description': return 'Konfigurasikan pengimbasan perpustakaan berkala';
			case 'admin.library_scanning_enable_description': return 'Dayakan pengimbasan perpustakaan berkala';
			case 'admin.library_settings': return 'Perpustakaan Luaran';
			case 'admin.library_settings_description': return 'Urus tetapan perpustakaan luaran';
			case 'admin.library_tasks_description': return 'Laksanakan tugas perpustakaan';
			case 'admin.library_watching_enable_description': return 'Perhatikan perpustakaan luaran untuk perubahan fail';
			case 'admin.library_watching_settings': return 'Perhati perpustakaan (EKSPERIMEN)';
			case 'admin.library_watching_settings_description': return 'Perhati fail yang diubah secara automatik';
			case 'admin.logging_enable_description': return 'Dayakan pengelogan';
			case 'admin.logging_level_description': return 'Apabila didayakan, tahap log yang hendak digunakan.';
			case 'admin.logging_settings': return 'Log';
			case 'admin.machine_learning_clip_model': return 'Model CLIP';
			case 'admin.machine_learning_clip_model_description': return 'Nama model CLIP disenaraikan <link>di sini</link>. Ambil perhatian bahawa anda mesti menjalankan semula tugas \'Carian Pintar\' untuk semua imej selepas menukar model.';
			case 'admin.machine_learning_duplicate_detection': return 'Pengesanan Pendua';
			case 'admin.machine_learning_duplicate_detection_enabled': return 'Dayakan pengesanan pendua';
			case 'admin.machine_learning_duplicate_detection_enabled_description': return 'Jika dilumpuhkan, aset yang betul-betul serupa masih akan dinyahduakan.';
			case 'admin.machine_learning_duplicate_detection_setting_description': return 'Gunakan pembenaman CLIP untuk mencari kemungkinan pendua';
			case 'admin.machine_learning_enabled': return 'Dayakan pembelajaran mesin';
			case 'admin.machine_learning_enabled_description': return 'Jika dilumpuhkan, semua ciri Pembelajaran Mesin akan dilumpuhkan tanpa mengira tetapan di bawah.';
			case 'admin.machine_learning_facial_recognition': return 'Pengecaman Wajah';
			case 'admin.machine_learning_facial_recognition_description': return 'Mengesan, mengecam dan mengumpulkan wajah dalam imej';
			case 'admin.machine_learning_facial_recognition_model': return 'Model pengecaman wajah';
			case 'admin.machine_learning_facial_recognition_model_description': return 'Model disenaraikan dalam susunan saiz menurun. Model yang lebih besar adalah lebih perlahan dan menggunakan lebih banyak memori, tetapi menghasilkan hasil yang lebih baik. Ambil perhatian bahawa anda mesti menjalankan semula kerja Pengesanan Wajah untuk semua imej apabila menukar model.';
			case 'admin.machine_learning_facial_recognition_setting': return 'Dayakan pengecaman wajah';
			case 'admin.machine_learning_facial_recognition_setting_description': return 'Jika dilumpuhkan, imej tidak akan dikodkan untuk pengecaman wajah dan tidak akan mengisi bahagian Orang dalam halaman Teroka.';
			case 'admin.machine_learning_max_detection_distance': return 'Jarak pengesanan maksimum';
			case 'admin.machine_learning_max_detection_distance_description': return 'Jarak maksimum antara dua imej untuk menganggapnya sebagai pendua, antara 0.001-0.1. Nilai yang lebih tinggi akan mengesan lebih banyak pendua, tetapi mungkin menghasilkan positif palsu.';
			case 'admin.machine_learning_max_recognition_distance': return 'Jarak pengecaman maksimum';
			case 'admin.machine_learning_max_recognition_distance_description': return 'Jarak maksimum antara dua muka untuk dianggap sebagai orang yang sama, antara 0-2. Menurunkan ini boleh menghalang pelabelan dua orang sebagai orang yang sama, manakala menaikkannya boleh menghalang pelabelan orang yang sama sebagai dua orang yang berbeza. Ambil perhatian bahawa adalah lebih mudah untuk menggabungkan dua orang daripada membelah satu orang kepada dua, jadi silap pada bahagian ambang yang lebih rendah apabila boleh.';
			case 'admin.machine_learning_min_detection_score': return 'Skor pengesanan minimum';
			case 'admin.machine_learning_min_detection_score_description': return 'Skor keyakinan minimum untuk wajah dikesan dari 0-1. Nilai yang lebih rendah akan mengesan lebih banyak muka tetapi mungkin menghasilkan positif palsu.';
			case 'admin.machine_learning_min_recognized_faces': return 'Minimum mengenali wajah';
			default: return null;
		}
	}
}

