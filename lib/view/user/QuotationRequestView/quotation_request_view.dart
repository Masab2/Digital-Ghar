import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';

class QuotationModel {
  final String contractorName;
  final String projectType;
  final String date;
  final String status;
  final double estimatedCost;
  final String description;

  QuotationModel({
    required this.contractorName,
    required this.projectType,
    required this.date,
    required this.status,
    required this.estimatedCost,
    required this.description,
  });
}

class QuotationRequestView extends StatefulWidget {
  const QuotationRequestView({super.key});

  @override
  State<QuotationRequestView> createState() => _QuotationRequestViewState();
}

class _QuotationRequestViewState extends State<QuotationRequestView> {
  // Sample data for demonstration
  final List<QuotationModel> quotations = [
    QuotationModel(
      contractorName: "Raj Construction Co.",
      projectType: "House Renovation",
      date: "24 Apr, 2025",
      status: "Pending",
      estimatedCost: 450000,
      description: "Complete renovation of 2BHK house including flooring, painting and electrical work.",
    ),
    QuotationModel(
      contractorName: "Modern Builders",
      projectType: "New Kitchen",
      date: "20 Apr, 2025",
      status: "Approved",
      estimatedCost: 120000,
      description: "Modern modular kitchen with granite countertops and built-in appliances.",
    ),
    QuotationModel(
      contractorName: "Elite Interiors",
      projectType: "Living Room Design",
      date: "15 Apr, 2025",
      status: "Completed",
      estimatedCost: 85000,
      description: "Contemporary living room interior design with custom furniture and lighting.",
    ),
  ];

  String _filterStatus = "All";

  List<QuotationModel> get filteredQuotations {
    if (_filterStatus == "All") {
      return quotations;
    } else {
      return quotations.where((quote) => quote.status == _filterStatus).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Quotations',
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.024,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(IconlyLight.filter, size: context.mh * 0.028),
            onPressed: () {
              _showFilterOptions();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.mw * 0.04,
          vertical: context.mh * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Quotation Requests',
              style: GoogleFonts.poppins(
                fontSize: context.mh * 0.022,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: context.mh * 0.01),
            Text(
              'Track the status of your quotation requests',
              style: GoogleFonts.poppins(
                fontSize: context.mh * 0.014,
                color: AppColor.greyColor,
              ),
            ),
            SizedBox(height: context.mh * 0.02),
            _buildStatusFilter(),
            SizedBox(height: context.mh * 0.02),
            Expanded(
              child: filteredQuotations.isEmpty
                  ? _buildEmptyState()
                  : ListView.builder(
                      itemCount: filteredQuotations.length,
                      itemBuilder: (context, index) {
                        return _buildQuotationCard(filteredQuotations[index]);
                      },
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.blueColor,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          // Navigate to create new quotation request
        },
      ),
    );
  }

  Widget _buildStatusFilter() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _filterChip("All"),
          SizedBox(width: context.mw * 0.02),
          _filterChip("Pending"),
          SizedBox(width: context.mw * 0.02),
          _filterChip("Approved"),
          SizedBox(width: context.mw * 0.02),
          _filterChip("Completed"),
        ],
      ),
    );
  }

  Widget _filterChip(String status) {
    final isSelected = _filterStatus == status;
    return GestureDetector(
      onTap: () {
        setState(() {
          _filterStatus = status;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.mw * 0.04,
          vertical: context.mh * 0.01,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColor.blueColor
              : AppColor.greyColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          status,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.014,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            color: isSelected ? Colors.white : AppColor.greyColor,
          ),
        ),
      ),
    );
  }

  Widget _buildQuotationCard(QuotationModel quotation) {
    Color statusColor;
    IconData statusIcon;

    switch (quotation.status) {
      case "Pending":
        statusColor = Colors.orange;
        statusIcon = IconlyLight.time_circle;
        break;
      case "Approved":
        statusColor = Colors.green;
        statusIcon = IconlyBold.tick_square;
        break;
      case "Completed":
        statusColor = AppColor.blueColor;
        statusIcon = IconlyBold.shield_done;
        break;
      default:
        statusColor = AppColor.greyColor;
        statusIcon = IconlyLight.document;
    }

    return Container(
      margin: EdgeInsets.only(bottom: context.mh * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          _showQuotationDetails(quotation);
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(context.mh * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      quotation.contractorName,
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.018,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.mw * 0.02,
                      vertical: context.mh * 0.004,
                    ),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          statusIcon,
                          size: context.mh * 0.016,
                          color: statusColor,
                        ),
                        SizedBox(width: context.mw * 0.01),
                        Text(
                          quotation.status,
                          style: GoogleFonts.poppins(
                            fontSize: context.mh * 0.012,
                            fontWeight: FontWeight.w500,
                            color: statusColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.mh * 0.01),
              Row(
                children: [
                  Icon(
                    IconlyLight.category,
                    size: context.mh * 0.018,
                    color: AppColor.greyColor,
                  ),
                  SizedBox(width: context.mw * 0.01),
                  Text(
                    quotation.projectType,
                    style: GoogleFonts.poppins(
                      fontSize: context.mh * 0.014,
                      color: AppColor.greyColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.mh * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        IconlyLight.calendar,
                        size: context.mh * 0.018,
                        color: AppColor.greyColor,
                      ),
                      SizedBox(width: context.mw * 0.01),
                      Text(
                        quotation.date,
                        style: GoogleFonts.poppins(
                          fontSize: context.mh * 0.014,
                          color: AppColor.greyColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        IconlyLight.wallet,
                        size: context.mh * 0.018,
                        color: AppColor.blueColor,
                      ),
                      SizedBox(width: context.mw * 0.01),
                      Text(
                        '₹${quotation.estimatedCost.toStringAsFixed(0)}',
                        style: GoogleFonts.poppins(
                          fontSize: context.mh * 0.016,
                          fontWeight: FontWeight.w600,
                          color: AppColor.blueColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            IconlyLight.document,
            size: context.mh * 0.08,
            color: AppColor.greyColor.withOpacity(0.5),
          ),
          SizedBox(height: context.mh * 0.02),
          Text(
            'No quotation requests found',
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.018,
              fontWeight: FontWeight.w500,
              color: AppColor.greyColor,
            ),
          ),
          SizedBox(height: context.mh * 0.01),
          Text(
            'Create a new quotation request to get started',
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.014,
              color: AppColor.greyColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  void _showFilterOptions() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(context.mh * 0.02),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.mw * 0.02,
                  vertical: context.mh * 0.01,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filter Quotations',
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.02,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              const Divider(),
              _buildFilterOption('All Quotations', 'All'),
              _buildFilterOption('Pending Quotations', 'Pending'),
              _buildFilterOption('Approved Quotations', 'Approved'),
              _buildFilterOption('Completed Quotations', 'Completed'),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFilterOption(String title, String status) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: context.mh * 0.016,
        ),
      ),
      leading: Icon(
        _filterStatus == status
            ? Icons.radio_button_checked
            : Icons.radio_button_unchecked,
        color: _filterStatus == status ? AppColor.blueColor : AppColor.greyColor,
      ),
      onTap: () {
        setState(() {
          _filterStatus = status;
        });
        Navigator.pop(context);
      },
    );
  }

  void _showQuotationDetails(QuotationModel quotation) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(context.mh * 0.03),
          height: context.mh * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quotation Details',
                    style: GoogleFonts.poppins(
                      fontSize: context.mh * 0.022,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _detailsItem('Contractor', quotation.contractorName, IconlyLight.profile),
                      _detailsItem('Project Type', quotation.projectType, IconlyLight.category),
                      _detailsItem('Date Requested', quotation.date, IconlyLight.calendar),
                      _detailsItem('Status', quotation.status, IconlyLight.tick_square),
                      _detailsItem(
                          'Estimated Cost', '₹${quotation.estimatedCost.toStringAsFixed(0)}', IconlyLight.wallet),
                      SizedBox(height: context.mh * 0.02),
                      Text(
                        'Project Description',
                        style: GoogleFonts.poppins(
                          fontSize: context.mh * 0.016,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: context.mh * 0.01),
                      Text(
                        quotation.description,
                        style: GoogleFonts.poppins(
                          fontSize: context.mh * 0.014,
                          color: AppColor.greyColor,
                        ),
                      ),
                      SizedBox(height: context.mh * 0.03),
                      if (quotation.status == "Pending")
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  // Handle approve action
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.blueColor,
                                  padding: EdgeInsets.symmetric(vertical: context.mh * 0.015),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Approve Quotation',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _detailsItem(String label, String value, IconData icon) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.mh * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: context.mh * 0.022,
            color: AppColor.blueColor.withOpacity(0.7),
          ),
          SizedBox(width: context.mw * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.014,
                    color: AppColor.greyColor,
                  ),
                ),
                SizedBox(height: context.mh * 0.005),
                Text(
                  value,
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.016,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}