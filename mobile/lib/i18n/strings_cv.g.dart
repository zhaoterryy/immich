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
class TranslationsCv extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCv({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.cv,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <cv>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsCv _root = this; // ignore: unused_field

	// Translations
	@override String get about => 'Ҫинчен';
	@override String get account => 'Шута ҫырни';
	@override String get account_settings => 'Шута ҫырни ӗнерленӳ';
	@override String get acknowledge => 'Çирӗплет';
	@override String get action => 'Ӗçлени';
	@override String get actions => 'Ӗҫсем';
	@override String get active => 'Хастар';
	@override String get activity => 'Хастарлӑх';
	@override String get activity_changed => 'Хастарлӑха {enabled, select, true {кӗртнӗ} other {сӳнтернӗ}}';
	@override String get add => 'Хуш';
	@override String get add_a_description => 'Ҫырса кӑтартни хуш';
	@override String get add_a_location => 'Вырӑн хуш';
	@override String get add_a_name => 'Ятне хуш';
	@override String get add_a_title => 'Ят хуш';
	@override String get add_exclusion_pattern => 'Кӑларса пӑрахмалли йӗрке хуш';
	@override String get add_import_path => 'Импорт ҫулне хуш';
	@override String get add_location => 'Вырӑн хуш';
	@override String get add_more_users => 'Усӑҫсем ытларах хуш';
	@override String get add_partner => 'Мӑшӑр хуш';
	@override String get add_path => 'Ҫулне хуш';
	@override String get add_photos => 'Сӑнӳкерчӗксем хуш';
	@override String get add_to => 'Мӗн те пулин хуш...';
	@override String get add_to_album => 'Альбома хуш';
	@override String get add_to_shared_album => 'Пӗрлехи альбома хуш';
	@override String get added_to_archive => 'Архива хушнӑ';
	@override String get added_to_favorites => 'Суйласа илнине хушнӑ';
	@override String get added_to_favorites_count => 'Суйласа илнине {count, number} хушнӑ';
	@override late final _TranslationsAdminCv admin = _TranslationsAdminCv._(_root);
}

// Path: admin
class _TranslationsAdminCv extends TranslationsAdminEn {
	_TranslationsAdminCv._(TranslationsCv root) : this._root = root, super.internal(root);

	final TranslationsCv _root; // ignore: unused_field

	// Translations
	@override String get asset_offline_description => 'Библиотекӑн ҫак тулаш файлне дискра урӑх тупайман, карҫинккана куҫарнӑ. Енчен те файла вулавӑш ӑшне куҫарнӑ пулсан, тивӗҫлӗ ҫӗнӗ ресурс тупас тесен хӑвӑрӑн вӑхӑтлӑх шкалӑна тӗрӗслӗр. Ҫак файла ҫӗнӗрен чӗртес тесен файл патне каймалли ҫула Immich валли аяларах ҫитернине курса ӗненӗр, библиотекӑна сканерланине пурнӑҫлӑр.';
	@override String get authentication_settings_disable_all => 'Эсир кӗмелли пур меслетсене те чарса лартасшӑн тесе шутлатӑр-и? Кӗмелли шӑтӑка пӗтӗмпех уҫаҫҫӗ.';
	@override String get background_task_job => 'Курăнман ӗҫсем';
	@override String get check_all => 'Пурне те тӗрӗслӗр';
	@override String get cleared_jobs => 'Ӗҫсене тасатнӑ:{job}';
	@override String get confirm_email_below => 'Ҫирӗплетес тесен, аяларах «{email}» кӗртӗр';
	@override String get confirm_reprocess_all_faces => 'Пӗтӗм сӑнӗсене тепӗр хут палӑртас килет тесе шанатӑр-и? Ҫавӑн пекех ятсене пур ҫынран та хуратӗҫ.';
	@override String get create_job => 'Ӗҫе ту';
	@override String get disable_login => 'Кӗме чарӑр';
	@override String get duplicate_detection_job_description => 'Пӗр пек ӳкерчӗксене тупма машинӑллӑ вӗренӗве ӗҫлеттерӗр. Ӑслӑ шыравпа усӑ кураҫҫӗ';
	@override String get face_detection => 'Пит-куҫа тупасси';
	@override String get force_delete_user_warning => 'ПУЛТАРУЛӐХ: Ку усӑ куракана тата мӗнпур ресурса ҫийӗнчех кӑларса пӑрахасси патне илсе ҫитерӗ. Кӑна пӑрахӑҫлама май ҫук, файлсене те юсаса пӗтереймеҫҫӗ.';
	@override String get image_format => 'Тулашлăх';
	@override String get image_preview_description => 'Вӑтам пысӑкӑш ӳкерчӗк, уйрӑм метаданнӑйсем, пӗр объекта пӑхнӑ чухне тата машинӑллӑ вӗренӳре усӑ кураҫҫӗ';
	@override String get image_preview_quality_description => '1-100 таран малтанхи пахалӑх. Ҫӳллӗреххи лайӑхрах, анчах та пысӑкрах файлсем туса кӑларать тата приложенисен хуравлӑхне чакарма пултарать. Пӗчӗк хак лартни машинӑллӑ вӗренӳ пахалӑхне витӗм кӳме пултарать.';
	@override String get image_preview_title => 'Малтанлӑха пӑхмалли ӗнерлевсем';
	@override String get image_quality => 'Пахалӑх';
	@override String get image_resolution => 'Виҫе';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsCv {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about': return 'Ҫинчен';
			case 'account': return 'Шута ҫырни';
			case 'account_settings': return 'Шута ҫырни ӗнерленӳ';
			case 'acknowledge': return 'Çирӗплет';
			case 'action': return 'Ӗçлени';
			case 'actions': return 'Ӗҫсем';
			case 'active': return 'Хастар';
			case 'activity': return 'Хастарлӑх';
			case 'activity_changed': return 'Хастарлӑха {enabled, select, true {кӗртнӗ} other {сӳнтернӗ}}';
			case 'add': return 'Хуш';
			case 'add_a_description': return 'Ҫырса кӑтартни хуш';
			case 'add_a_location': return 'Вырӑн хуш';
			case 'add_a_name': return 'Ятне хуш';
			case 'add_a_title': return 'Ят хуш';
			case 'add_exclusion_pattern': return 'Кӑларса пӑрахмалли йӗрке хуш';
			case 'add_import_path': return 'Импорт ҫулне хуш';
			case 'add_location': return 'Вырӑн хуш';
			case 'add_more_users': return 'Усӑҫсем ытларах хуш';
			case 'add_partner': return 'Мӑшӑр хуш';
			case 'add_path': return 'Ҫулне хуш';
			case 'add_photos': return 'Сӑнӳкерчӗксем хуш';
			case 'add_to': return 'Мӗн те пулин хуш...';
			case 'add_to_album': return 'Альбома хуш';
			case 'add_to_shared_album': return 'Пӗрлехи альбома хуш';
			case 'added_to_archive': return 'Архива хушнӑ';
			case 'added_to_favorites': return 'Суйласа илнине хушнӑ';
			case 'added_to_favorites_count': return 'Суйласа илнине {count, number} хушнӑ';
			case 'admin.asset_offline_description': return 'Библиотекӑн ҫак тулаш файлне дискра урӑх тупайман, карҫинккана куҫарнӑ. Енчен те файла вулавӑш ӑшне куҫарнӑ пулсан, тивӗҫлӗ ҫӗнӗ ресурс тупас тесен хӑвӑрӑн вӑхӑтлӑх шкалӑна тӗрӗслӗр. Ҫак файла ҫӗнӗрен чӗртес тесен файл патне каймалли ҫула Immich валли аяларах ҫитернине курса ӗненӗр, библиотекӑна сканерланине пурнӑҫлӑр.';
			case 'admin.authentication_settings_disable_all': return 'Эсир кӗмелли пур меслетсене те чарса лартасшӑн тесе шутлатӑр-и? Кӗмелли шӑтӑка пӗтӗмпех уҫаҫҫӗ.';
			case 'admin.background_task_job': return 'Курăнман ӗҫсем';
			case 'admin.check_all': return 'Пурне те тӗрӗслӗр';
			case 'admin.cleared_jobs': return 'Ӗҫсене тасатнӑ:{job}';
			case 'admin.confirm_email_below': return 'Ҫирӗплетес тесен, аяларах «{email}» кӗртӗр';
			case 'admin.confirm_reprocess_all_faces': return 'Пӗтӗм сӑнӗсене тепӗр хут палӑртас килет тесе шанатӑр-и? Ҫавӑн пекех ятсене пур ҫынран та хуратӗҫ.';
			case 'admin.create_job': return 'Ӗҫе ту';
			case 'admin.disable_login': return 'Кӗме чарӑр';
			case 'admin.duplicate_detection_job_description': return 'Пӗр пек ӳкерчӗксене тупма машинӑллӑ вӗренӗве ӗҫлеттерӗр. Ӑслӑ шыравпа усӑ кураҫҫӗ';
			case 'admin.face_detection': return 'Пит-куҫа тупасси';
			case 'admin.force_delete_user_warning': return 'ПУЛТАРУЛӐХ: Ку усӑ куракана тата мӗнпур ресурса ҫийӗнчех кӑларса пӑрахасси патне илсе ҫитерӗ. Кӑна пӑрахӑҫлама май ҫук, файлсене те юсаса пӗтереймеҫҫӗ.';
			case 'admin.image_format': return 'Тулашлăх';
			case 'admin.image_preview_description': return 'Вӑтам пысӑкӑш ӳкерчӗк, уйрӑм метаданнӑйсем, пӗр объекта пӑхнӑ чухне тата машинӑллӑ вӗренӳре усӑ кураҫҫӗ';
			case 'admin.image_preview_quality_description': return '1-100 таран малтанхи пахалӑх. Ҫӳллӗреххи лайӑхрах, анчах та пысӑкрах файлсем туса кӑларать тата приложенисен хуравлӑхне чакарма пултарать. Пӗчӗк хак лартни машинӑллӑ вӗренӳ пахалӑхне витӗм кӳме пултарать.';
			case 'admin.image_preview_title': return 'Малтанлӑха пӑхмалли ӗнерлевсем';
			case 'admin.image_quality': return 'Пахалӑх';
			case 'admin.image_resolution': return 'Виҫе';
			default: return null;
		}
	}
}

