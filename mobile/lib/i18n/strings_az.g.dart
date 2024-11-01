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
class TranslationsAz extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAz({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.az,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <az>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsAz _root = this; // ignore: unused_field

	// Translations
	@override String get about => 'Haqqında';
	@override String get account => 'Hesab';
	@override String get account_settings => 'Hesab parametrləri';
	@override String get acknowledge => 'Təsdiq et';
	@override String get active => 'Aktiv';
	@override String get activity => 'Fəaliyyət';
	@override String get add => 'Əlavə et';
	@override String get add_a_description => 'Təsviri əlavə et';
	@override String get add_a_location => 'Məkan əlavə et';
	@override String get add_a_name => 'Ad əlavə et';
	@override String get add_a_title => 'Başlıq əlavə et';
	@override String get add_location => 'Məkanı əlavə et';
	@override String get add_more_users => 'Daha çox istifadəçi əlavə et';
	@override String get add_partner => 'Partnyor əlavə et';
	@override String get add_photos => 'Şəkilləri əlavə et';
	@override String get add_to => '... əlavə et';
	@override String get add_to_album => 'Albom əlavə et';
	@override String get add_to_shared_album => 'Paylaşılan alboma əlavə et';
	@override String get added_to_archive => 'Arxivə əlavə edildi';
	@override String get added_to_favorites => 'Sevimlilələrə əlavə edildi';
	@override String get added_to_favorites_count => '{count, number} şəkil sevimlilələrə əlavə edildi';
	@override late final _TranslationsAdminAz admin = _TranslationsAdminAz._(_root);
}

// Path: admin
class _TranslationsAdminAz extends TranslationsAdminEn {
	_TranslationsAdminAz._(TranslationsAz root) : this._root = root, super.internal(root);

	final TranslationsAz _root; // ignore: unused_field

	// Translations
	@override String get authentication_settings => 'Səlahiyyətləndirmə parametrləri';
	@override String get authentication_settings_description => 'Şifrə, OAuth və digər səlahiyyətləndirmə parametrləri';
	@override String get authentication_settings_disable_all => 'Bütün giriş etmə metodlarını söndürmək istədiyinizdən əminsinizmi? Giriş etmə funksiyası tamamilə söndürüləcəkdir.';
	@override String get authentication_settings_reenable => 'Yenidən aktiv etmək üçün <link> Server Əmri</link> -ni istifadə edin.';
	@override String get background_task_job => 'Arxa plan tapşırıqları';
	@override String get check_all => 'Hamısını yoxla';
	@override String get confirm_delete_library => '{library} kitabxanasını silmək istədiyinizdən əminmisiniz?';
	@override String get confirm_email_below => 'Təsdiqləmək üçün aşağıya {email} yazın';
	@override String get confirm_user_password_reset => '{user} adlı istifadəçinin şifrəsini sıfırlamaq istədiyinizdən əminmisiniz?';
	@override String get disable_login => 'Giriş etməni söndür';
	@override String get duplicate_detection_job_description => 'Bənzər şəkilləri tapmaq üçün maşın öyrənməsini işə salın. Bu prosses Smart Search funksiyasına əsaslanır';
	@override String get external_library_created_at => 'Xarici kitabxana ({date} (tarixində yaradıldı)';
	@override String get external_library_management => 'Xarici kitabxana idarəetməsi';
	@override String get face_detection => 'Üz tanıma';
	@override String get force_delete_user_warning => 'XƏBƏRDARLIQ: Bu əməliyyat istifadəçi və bütün məlumatları siləcəkdir. Bu prossesi və silinən faylları geri qaytarmaq olmaz.';
	@override String get forcing_refresh_library_files => 'Bütün kitabxana fayllarını məcburi yeniləmə';
	@override String get image_format_description => 'WebP, JPEG faylına görə daha kiçik həcmə sahibdir, lakin onu kodlaşdırmaq daha çox vaxt alır.';
	@override String get image_preview_title => 'Önizləmə parametrləri';
	@override String get image_quality => 'Keyfiyyət';
	@override String get image_resolution => 'Çözümlülük';
	@override String get image_resolution_description => 'Yüksək çözümlülükdə daha çox detallar vardır, lakin onları kodlaşdırmaq da daha çox vaxt alır, daha böyük həcmə sahib olurlar və tətbiqin işləmə sürətini yavaşladır.';
	@override String get image_settings => 'Şəklin parametrləri';
	@override String get image_settings_description => 'Hazırlanan şəkillərin keyfiyyətini və çözümlülüyünü idarə et';
	@override String get image_thumbnail_title => 'Önizləmə parametrləri';
	@override String get job_concurrency => '{job}paralellik';
	@override String get job_created => 'Tapşırıq yaradıldı';
	@override String get job_not_concurrency_safe => 'Bu tapşırıq parallel fəaliyyət üçün uyğun deyil';
	@override String get job_settings => 'Tapşırıq parametrləri';
	@override String get job_settings_description => 'Parallel şəkildə fəaliyyət göstərən tapşırıqları idarə et';
	@override String get job_status => 'Tapşırıq statusu';
	@override String get jobs_delayed => '{jobCount, plural, other {# gecikməli}}';
	@override String get jobs_failed => '{jobCount, plural, other {# uğursuz}}';
	@override String get library_created => '{library} kitabxanası yaradıldı';
	@override String get library_cron_expression => 'Kron zamanlaması';
	@override String get library_cron_expression_description => 'Kron zamanlama formatından istifadə edərək skan intervalının təyin edin. Daha çox məlumat üçün <link>Crontab Guru</link>';
	@override String get library_cron_expression_presets => 'Kron zamanlamasının ilkin parametrləri';
	@override String get library_deleted => 'Kitabxana silindi';
	@override String get library_import_path_description => 'İdxal olunacaq qovluöu seçin. Bu qovluq, alt qovluqlar daxil olmaqla şəkil və videolar üçün skan ediləcəkdir.';
	@override String get library_scanning => 'Periodik skan';
	@override String get library_scanning_description => 'Periodik kitabxana skanını confiqurasiya et';
	@override String get library_scanning_enable_description => 'Periodik kitabxana skanını aktivləşdir';
	@override String get library_settings => 'Xarici kitabxana';
	@override String get library_settings_description => 'Xarici kitabxana parametrlərini idarə et';
	@override String get library_tasks_description => 'Kitabxana tapşırıqlarını yerinə yetir';
	@override String get library_watching_enable_description => 'Fayl dəyişiklikləri üçün xarici kitabxanalara baxış keçirin';
	@override String get library_watching_settings => 'Kitabxana nəzarəti (EKSPERİMENTAL)';
	@override String get library_watching_settings_description => 'Dəyişdirilən faylları avtomatik olaraq yoxla';
	@override String get logging_enable_description => 'Jurnalı aktivləşdir';
	@override String get logging_level_description => 'Aktiv edildikdə hansı jurnal səviyyəsi istifadə olunur.';
	@override String get logging_settings => '';
	@override String get machine_learning_clip_model => 'CLIP modeli';
	@override String get machine_learning_clip_model_description => '<link>Burada</link>qeyd olunan CLIP modelinin adı. Modeli dəyişdirdikdən sonra bütün şəkillər üçün \'Ağıllı Axtarış\' funksiyasını yenidən işə salmalısınız.';
	@override String get machine_learning_duplicate_detection => 'Dublikat Aşkarlama';
	@override String get machine_learning_duplicate_detection_enabled => 'Dublikat aşkarlamanı aktiv etmək';
	@override String get machine_learning_duplicate_detection_enabled_description => 'Əgər deaktiv edilibsə, birə-bir eyni fayllar yenədə silinəcək.';
	@override String get machine_learning_duplicate_detection_setting_description => 'Bir-birinin dublikatı olan faylları tapmaq üçün CLIP-dən istifadə edin';
	@override String get machine_learning_enabled => 'Maşın öyrənməsini aktiv edin';
	@override String get machine_learning_enabled_description => 'Əgər deaktiv edilərsə, aşağıdakı parametrlərdən asılı olmayaq, bütün Maşın Öyrənmə funksiyaları deaktiv ediləcək.';
	@override String get machine_learning_facial_recognition => 'Üz Tanıma';
	@override String get machine_learning_facial_recognition_description => 'Şəkillərdəki üzləri aşkarla, tanı və qruplaşdır';
	@override String get machine_learning_facial_recognition_model => 'Üz tanıma modeli';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsAz {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about': return 'Haqqında';
			case 'account': return 'Hesab';
			case 'account_settings': return 'Hesab parametrləri';
			case 'acknowledge': return 'Təsdiq et';
			case 'active': return 'Aktiv';
			case 'activity': return 'Fəaliyyət';
			case 'add': return 'Əlavə et';
			case 'add_a_description': return 'Təsviri əlavə et';
			case 'add_a_location': return 'Məkan əlavə et';
			case 'add_a_name': return 'Ad əlavə et';
			case 'add_a_title': return 'Başlıq əlavə et';
			case 'add_location': return 'Məkanı əlavə et';
			case 'add_more_users': return 'Daha çox istifadəçi əlavə et';
			case 'add_partner': return 'Partnyor əlavə et';
			case 'add_photos': return 'Şəkilləri əlavə et';
			case 'add_to': return '... əlavə et';
			case 'add_to_album': return 'Albom əlavə et';
			case 'add_to_shared_album': return 'Paylaşılan alboma əlavə et';
			case 'added_to_archive': return 'Arxivə əlavə edildi';
			case 'added_to_favorites': return 'Sevimlilələrə əlavə edildi';
			case 'added_to_favorites_count': return '{count, number} şəkil sevimlilələrə əlavə edildi';
			case 'admin.authentication_settings': return 'Səlahiyyətləndirmə parametrləri';
			case 'admin.authentication_settings_description': return 'Şifrə, OAuth və digər səlahiyyətləndirmə parametrləri';
			case 'admin.authentication_settings_disable_all': return 'Bütün giriş etmə metodlarını söndürmək istədiyinizdən əminsinizmi? Giriş etmə funksiyası tamamilə söndürüləcəkdir.';
			case 'admin.authentication_settings_reenable': return 'Yenidən aktiv etmək üçün <link> Server Əmri</link> -ni istifadə edin.';
			case 'admin.background_task_job': return 'Arxa plan tapşırıqları';
			case 'admin.check_all': return 'Hamısını yoxla';
			case 'admin.confirm_delete_library': return '{library} kitabxanasını silmək istədiyinizdən əminmisiniz?';
			case 'admin.confirm_email_below': return 'Təsdiqləmək üçün aşağıya {email} yazın';
			case 'admin.confirm_user_password_reset': return '{user} adlı istifadəçinin şifrəsini sıfırlamaq istədiyinizdən əminmisiniz?';
			case 'admin.disable_login': return 'Giriş etməni söndür';
			case 'admin.duplicate_detection_job_description': return 'Bənzər şəkilləri tapmaq üçün maşın öyrənməsini işə salın. Bu prosses Smart Search funksiyasına əsaslanır';
			case 'admin.external_library_created_at': return 'Xarici kitabxana ({date} (tarixində yaradıldı)';
			case 'admin.external_library_management': return 'Xarici kitabxana idarəetməsi';
			case 'admin.face_detection': return 'Üz tanıma';
			case 'admin.force_delete_user_warning': return 'XƏBƏRDARLIQ: Bu əməliyyat istifadəçi və bütün məlumatları siləcəkdir. Bu prossesi və silinən faylları geri qaytarmaq olmaz.';
			case 'admin.forcing_refresh_library_files': return 'Bütün kitabxana fayllarını məcburi yeniləmə';
			case 'admin.image_format_description': return 'WebP, JPEG faylına görə daha kiçik həcmə sahibdir, lakin onu kodlaşdırmaq daha çox vaxt alır.';
			case 'admin.image_preview_title': return 'Önizləmə parametrləri';
			case 'admin.image_quality': return 'Keyfiyyət';
			case 'admin.image_resolution': return 'Çözümlülük';
			case 'admin.image_resolution_description': return 'Yüksək çözümlülükdə daha çox detallar vardır, lakin onları kodlaşdırmaq da daha çox vaxt alır, daha böyük həcmə sahib olurlar və tətbiqin işləmə sürətini yavaşladır.';
			case 'admin.image_settings': return 'Şəklin parametrləri';
			case 'admin.image_settings_description': return 'Hazırlanan şəkillərin keyfiyyətini və çözümlülüyünü idarə et';
			case 'admin.image_thumbnail_title': return 'Önizləmə parametrləri';
			case 'admin.job_concurrency': return '{job}paralellik';
			case 'admin.job_created': return 'Tapşırıq yaradıldı';
			case 'admin.job_not_concurrency_safe': return 'Bu tapşırıq parallel fəaliyyət üçün uyğun deyil';
			case 'admin.job_settings': return 'Tapşırıq parametrləri';
			case 'admin.job_settings_description': return 'Parallel şəkildə fəaliyyət göstərən tapşırıqları idarə et';
			case 'admin.job_status': return 'Tapşırıq statusu';
			case 'admin.jobs_delayed': return '{jobCount, plural, other {# gecikməli}}';
			case 'admin.jobs_failed': return '{jobCount, plural, other {# uğursuz}}';
			case 'admin.library_created': return '{library} kitabxanası yaradıldı';
			case 'admin.library_cron_expression': return 'Kron zamanlaması';
			case 'admin.library_cron_expression_description': return 'Kron zamanlama formatından istifadə edərək skan intervalının təyin edin. Daha çox məlumat üçün <link>Crontab Guru</link>';
			case 'admin.library_cron_expression_presets': return 'Kron zamanlamasının ilkin parametrləri';
			case 'admin.library_deleted': return 'Kitabxana silindi';
			case 'admin.library_import_path_description': return 'İdxal olunacaq qovluöu seçin. Bu qovluq, alt qovluqlar daxil olmaqla şəkil və videolar üçün skan ediləcəkdir.';
			case 'admin.library_scanning': return 'Periodik skan';
			case 'admin.library_scanning_description': return 'Periodik kitabxana skanını confiqurasiya et';
			case 'admin.library_scanning_enable_description': return 'Periodik kitabxana skanını aktivləşdir';
			case 'admin.library_settings': return 'Xarici kitabxana';
			case 'admin.library_settings_description': return 'Xarici kitabxana parametrlərini idarə et';
			case 'admin.library_tasks_description': return 'Kitabxana tapşırıqlarını yerinə yetir';
			case 'admin.library_watching_enable_description': return 'Fayl dəyişiklikləri üçün xarici kitabxanalara baxış keçirin';
			case 'admin.library_watching_settings': return 'Kitabxana nəzarəti (EKSPERİMENTAL)';
			case 'admin.library_watching_settings_description': return 'Dəyişdirilən faylları avtomatik olaraq yoxla';
			case 'admin.logging_enable_description': return 'Jurnalı aktivləşdir';
			case 'admin.logging_level_description': return 'Aktiv edildikdə hansı jurnal səviyyəsi istifadə olunur.';
			case 'admin.logging_settings': return '';
			case 'admin.machine_learning_clip_model': return 'CLIP modeli';
			case 'admin.machine_learning_clip_model_description': return '<link>Burada</link>qeyd olunan CLIP modelinin adı. Modeli dəyişdirdikdən sonra bütün şəkillər üçün \'Ağıllı Axtarış\' funksiyasını yenidən işə salmalısınız.';
			case 'admin.machine_learning_duplicate_detection': return 'Dublikat Aşkarlama';
			case 'admin.machine_learning_duplicate_detection_enabled': return 'Dublikat aşkarlamanı aktiv etmək';
			case 'admin.machine_learning_duplicate_detection_enabled_description': return 'Əgər deaktiv edilibsə, birə-bir eyni fayllar yenədə silinəcək.';
			case 'admin.machine_learning_duplicate_detection_setting_description': return 'Bir-birinin dublikatı olan faylları tapmaq üçün CLIP-dən istifadə edin';
			case 'admin.machine_learning_enabled': return 'Maşın öyrənməsini aktiv edin';
			case 'admin.machine_learning_enabled_description': return 'Əgər deaktiv edilərsə, aşağıdakı parametrlərdən asılı olmayaq, bütün Maşın Öyrənmə funksiyaları deaktiv ediləcək.';
			case 'admin.machine_learning_facial_recognition': return 'Üz Tanıma';
			case 'admin.machine_learning_facial_recognition_description': return 'Şəkillərdəki üzləri aşkarla, tanı və qruplaşdır';
			case 'admin.machine_learning_facial_recognition_model': return 'Üz tanıma modeli';
			default: return null;
		}
	}
}

