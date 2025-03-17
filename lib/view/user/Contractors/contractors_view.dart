// ignore_for_file: deprecated_member_use

import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';
import 'package:digital_ghar/config/components/TextFormFeilds/search_text_form_feild.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/widgets/ContracterUserWidget/contracter_card_widget.dart';
import 'package:digital_ghar/data/Response/status.dart';
import 'package:digital_ghar/viewModel/ContractorProfileViewModel/contractor_profile_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class ContractorsView extends StatefulWidget {
  const ContractorsView({super.key});

  @override
  State<ContractorsView> createState() => _ContractorsViewState();
}

class _ContractorsViewState extends State<ContractorsView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ContractorProfileViewmodel>(context, listen: false)
          .getContractorProfileApi();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contractors',
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.024,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.mw * 0.04),
        child: Consumer<ContractorProfileViewmodel>(
          builder: (context, viewModel, child) {
            switch (viewModel.apiResponse.status) {
              case Status.completed:
                return Column(
                  children: [
                    // Search and Filter Section
                    Row(
                      children: [
                        Expanded(
                          child: CustomizedFeilds(
                            onChanged: (value) {
                              return null;
                            },
                            hintText: 'Search contractors by Area',
                            prefixIcon: IconlyLight.search,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: context.mh * 0.02),
                    // Specialization chips
                    Expanded(
                      child: ListView.builder(
                        itemCount: viewModel.apiResponse.data?.profiles?.length,
                        itemBuilder: (context, index) {
                          final contractor =
                              viewModel.apiResponse.data?.profiles?[index];
                          return ContractorCard(
                            contractor:
                                contractor ?? ContractorProfileModelData(),
                          );
                        },
                      ),
                    ),
                  ],
                );
              case Status.error:
                return const Center(
                  child: Text("Error Occured"),
                );
              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
