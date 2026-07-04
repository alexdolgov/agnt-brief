// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IAsset {
    enum Status {
        New,
        Upcoming,
        Active,
        Inactive,
        SoldOut,
        NotSoldOut,
        Disabled,
        Confirmed,
        PreSale
    }

    struct AssetLocationData {
        string country;
        string state;
        string city;
        string postalCode;
        string addressLine;
        string coordinates;
    }

    struct AssetInfo {
        uint16 entityType;
        uint64 creation;
        string name;
        string closingCost;
        string underlyingPrice;
    }

    struct Document {
        string name;
        string hash;
    }

    struct PaymentTokenRange {
        int256 min;
        int256 max;
    }

    struct AssetInfoAndLocation {
        AssetInfo info;
        AssetLocationData location;
    }

    event Bought(address indexed buyer, uint256 amount, uint256 timestamp, uint256 price, uint256 amountInUsd);
    event InvestWithAmbassador(address indexed buyer, address indexed ambassador, uint256 amount, uint256 timestamp);
    event Sold();
    event Confirmed();
    event Rejected();
    event StatusChanged(Status oldStatus, Status newStatus, uint256 timestamp);
    event DocumentAdded(string name, string hash, uint256 timestamp);
    event DocumentUpdated(uint256 index, string name, string hash, uint256 timestamp);
    event AssetLocationUpdated(uint256 timestamp);
    event AssetInfoUpdated(uint256 timestamp);

    function buyersLength() external view returns (uint256);

    function getBuyers() external view returns (address[] memory);

    function isBuyer(address buyer) external view returns (bool);

    function invest(address recipient, uint256 amount) external;

    function investWithAmbassador(address recipient, uint256 amount, address ambassador) external;

    function setStatus(Status _status) external;

    function setSaleEndDate(uint256 _saleEndDate) external;

    function setPaymentTokenRange(PaymentTokenRange memory _paymentTokenRange) external;

    function setChainLinkPrice(address _chainLinkPrice) external;

    function confirmSelling(address seller) external;

    function rejectSelling(uint256 offset, uint256 skip) external;

    function rejectSellingUser() external;

    function updateAssetInfo(AssetInfo memory assetInfo) external;

    function updateAssetLocationData(AssetLocationData memory assetLocationData) external;

    function addDocument(Document memory document) external;

    function updateDocument(uint256 documentIndex, Document memory document) external;

    function getDocuments() external view returns (Document[] memory);
}
