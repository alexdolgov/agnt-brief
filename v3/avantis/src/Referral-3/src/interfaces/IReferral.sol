// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

interface IReferral {
    struct ReferralTier {
        uint256 feeDiscountPct; // e.g. 9500 for 95% of the original fee
        uint256 refRebatePct; // e.g. 500 for 5% rebate to referrer
    }

    struct DiscountTier {
        uint feeDiscountPct; // e.g. 9500 for 95% of the fee
    }

    //Events
    event GovTransferInitiated(address oldGov, address newGov);
    event GovTransferAccepted(address oldGov, address newGov);
    event SetHandler(address handler, bool isActive);
    event SetTraderReferralCode(address account, bytes32 code);
    event ReferralTierSet(uint256 tierId, uint256 feeDiscountPct, uint256 refRebatePct);
    event DiscountTierSet(uint256 tierId, uint256 feeDiscountPct);
    event SetReferrerTier(address referrer, uint256 tierId);
    event SetReferrerDiscountShare(address referrer, uint256 discountShare);
    event RegisterCode(address account, bytes32 code);
    event SetCodeOwner(address oldOwner, address newOwner, bytes32 code);
    event SetPendingCodeOwner(address account, address newAccount, bytes32 code);
    event GovSetCodeOwner(bytes32 code, address newAccount);
    event CodeUpdated(bytes32 code, bool isSpecial);
    event Discounted(address trader, uint256 traderTier, uint256 feeDiscount, uint256 traderFeePostDiscount);
    event TraderTierUpdated(address trader, uint256 _tier);
    event RelinquishedCode(address account, bytes32 code);
    event PrivateCodeRequested(address trader, bytes32 _code);
    event RequestCancelled(address trader, bytes32 _code);

    function codeOwners(bytes32 _code) external view returns (address);

    function traderReferralCodes(address _account) external view returns (bytes32);

    function referrerTiers(address _account) external view returns (uint256);

    function getTraderReferralInfo(address _account) external view returns (bytes32, address);

    function setTraderReferralCode(address _account, bytes32 _code) external;

    function setReferralTier(uint256 _tierId, uint256 _totalRebate, uint256 _discountShare) external;

    function setDiscountTier(uint256 _tierId, uint256 _feeDiscountPct) external;
    
    function setReferrerTier(address _referrer, uint256 _tierId) external;

    function govSetCodeOwner(bytes32 _code, address _newAccount) external;

    function traderReferralDiscount(address _account, uint _feeBips) external returns (uint, address, uint);

}
