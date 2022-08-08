import 'package:fluro/fluro.dart';

import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';

// Handlers
final Handler counterHandler = Handler(
  handlerFunc: (context, parameters) {
    return CounterView( base: parameters['base']?.first ?? '5',);
  }
);

final Handler providerHandler = Handler(
  handlerFunc: (context, parameters) {

    return CounterProviderView( base: parameters['q']?.first ?? '200', );
  }
);

final Handler dashboardUserHandler = Handler(
  handlerFunc: (context, parameters) {

    return const View404();
  }
);

final Handler pageNotFound = Handler(
  handlerFunc: (context, parameters) => const View404(),
);