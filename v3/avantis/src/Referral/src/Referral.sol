// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "./interfaces/IReferral.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";


/** @title Referral contract */
contract Referral is PausableUpgradeable, IReferral {

    uint256 private constant _BASIS_POINTS = 10000;
    uint private constant _DEFAULT_TIER_ID = 1;
    
    address public gov;
    address public pendingGov;

    mapping(address => uint256) public override referrerTiers;
    mapping(address => uint256) public traderTiers;
    mapping(uint256 => ReferralTier) public referralTiers;
    mapping(uint256 => DiscountTier) public discountTiers;
    mapping(address => bool) public isHandler;
    mapping(bytes32 => address) public override codeOwners;
    mapping(bytes32 => address) public pendingCodeOwners;
    mapping(address => bytes32) public codes;
    mapping(address => bytes32) public override traderReferralCodes;
    mapping(bytes32 => bool) public isPrivate;
    mapping(address => bytes32) public requestCode;

    modifier onlyHandler() {
        require(isHandler[msg.sender], "Referral: forbidden");
        _;
    }

    modifier onlyGov() {
        require(msg.sender == gov, "Governable: forbidden");
        _;
    }

    modifier onlyGovOrHandler() {
        require(isHandler[msg.sender] || msg.sender == gov, "ONLY_GOV_OR_HANDLER");
        _;
    }

    constructor() {
        _disableInitializers();
    }


    function initialize(address _gov) external initializer {
        gov = _gov;
    }
    /**
     * @notice Accepts the transfer of governance to the pending governance address.
     * @dev Only callable by the pending governance address.
     */
    function acceptGovTransfer() external {
        require(pendingGov == msg.sender, "Referral: caller is not the pending governance");
        emit GovTransferAccepted(gov, msg.sender);
        gov = pendingGov;
        delete pendingGov;
    }

    /** 
     * @notice Initiates the transfer of governance to a new address
     * @param _newGov The address of the new governance
     */
    function initiateGovTransfer(address _newGov) external onlyGov {
        require(_newGov != address(0));
        pendingGov = _newGov;
        emit GovTransferInitiated(gov,_newGov);
    }

    /** 
     * @notice Sets the handler for the referral system
     * @param _handler The address of the handler
     * @param _isActive Boolean to indicate if handler is active
     */
    function setHandler(address _handler, bool _isActive) external onlyGov {
        isHandler[_handler] = _isActive;
        emit SetHandler(_handler, _isActive);
    }

    /**
     * @notice Pauses the contract
     */
    function pause() external onlyGov {
        _pause();
    }

    /**
     * @notice Unpauses the contract
     */
    function unpause() external onlyGov {
        _unpause();
    }

    /** 
     * @notice Sets the tier for referral program
     * @param _tierId The ID of the tier
     * @param _feeDiscountPct The discount percent
     * @param _refRebatePct The rebate percent for referrer
     */
    function setReferralTier(uint256 _tierId, uint256 _feeDiscountPct, uint256 _refRebatePct) external override onlyGov {
        require(_feeDiscountPct <= _BASIS_POINTS, "Referral: invalid totalRebate");
        require(_refRebatePct <= _BASIS_POINTS, "Referral: invalid discountShare");

        ReferralTier memory tier = referralTiers[_tierId];
        tier.feeDiscountPct = _feeDiscountPct;
        tier.refRebatePct = _refRebatePct;
        referralTiers[_tierId] = tier;

        emit ReferralTierSet(_tierId, _feeDiscountPct, _refRebatePct);
    }

    /** 
     * @notice Sets the tier for Discount program
     * @param _tierId The ID of the tier
     * @param _feeDiscountPct The discount percent
     */
    function setDiscountTier(uint256 _tierId, uint256 _feeDiscountPct) external override onlyGov {
        require(_feeDiscountPct <= _BASIS_POINTS, "Referral: invalid totalRebate");

        DiscountTier memory tier = discountTiers[_tierId];
        tier.feeDiscountPct = _feeDiscountPct;
        discountTiers[_tierId] = tier;

        emit DiscountTierSet(_tierId, _feeDiscountPct);
    }

    /** 
     * @notice Sets the tier for a referrer
     * @param _referrer The address of the referrer
     * @param _tierId The ID of the tier to set
     */
    function setReferrerTier(address _referrer, uint256 _tierId) external override onlyGovOrHandler {
        referrerTiers[_referrer] = _tierId;
        emit SetReferrerTier(_referrer, _tierId);
    }

    /** 
     * @notice Sets the trader's referral code
     * @param _account The address of the trader
     * @param _code The referral code
     */
    function setTraderReferralCode(address _account, bytes32 _code) external override onlyGovOrHandler {
        _setTraderReferralCode(_account, _code);
    }

    /**
    @notice Method to update tier of trader based on metrics such as Vol, credits etc.
    @param _trader Trader Address
    @param _tier Tier to upgrade Trader to
     */
    function setTraderTier(address _trader, uint _tier) external onlyGovOrHandler{

        traderTiers[_trader] =  _tier;
        emit TraderTierUpdated(_trader, _tier);
    }
    /** 
     * @notice Sets the trader's referral code. Callable by user. 
     * @param _code The referral code
     */
    function setTraderReferralCodeByUser(bytes32 _code) external whenNotPaused {
        require(!isPrivate[_code], "USAGE_RESTRICTED");
        _setTraderReferralCode(msg.sender, _code);
    }

    /**
    @notice Ability for Owner to let traders use its code
     */
    function setTraderReferralCodeByOwner(bytes32 _code, address _trader) external whenNotPaused{
        require(codeOwners[_code] == msg.sender, "OWNER_ONLY");
        require(requestCode[_trader] == _code, "CODE_NOT_REQUESTED");
        _setTraderReferralCode(_trader, _code);
        delete requestCode[_trader];
    }

    function requestSpecialCode(bytes32 _code) external whenNotPaused{
        requestCode[msg.sender] = _code;
        emit PrivateCodeRequested(msg.sender, _code);
    }

    function cancelRequest() external whenNotPaused{
        require(requestCode[msg.sender] != bytes32(0), "Referral: No Code Requested");
        emit RequestCancelled(msg.sender, requestCode[msg.sender]);
        delete requestCode[msg.sender];
    }

    function relinquishCode() external whenNotPaused{
        require(traderReferralCodes[msg.sender] != bytes32(0), "Referral: No Code to reliquinsh");
        emit RelinquishedCode(msg.sender, traderReferralCodes[msg.sender]);
        traderReferralCodes[msg.sender] = bytes32(0);
    }
    /** 
     * @notice Register a referral code for the sender. To be called by referrer
     * @param _code The referral code to register
     */
    function registerCode(bytes32 _code) external whenNotPaused {
        require(_code != bytes32(0), "Referral: invalid _code");
        require(codeOwners[_code] == address(0), "Referral: code already exists");
        require(codes[msg.sender] == bytes32(0),"Referral: referrer already registered");

        codeOwners[_code] = msg.sender;
        codes[msg.sender] =  _code;
        referrerTiers[msg.sender] = _DEFAULT_TIER_ID;
        isPrivate[_code]  = false;
        
        emit RegisterCode(msg.sender, _code);
    }

    /**
    * @notice Convert the code to a special code
     */
    function updateReferral(bytes32 _code, bool _isPrivate) external onlyGovOrHandler {
        require(_code != bytes32(0), "Referral: invalid _code");
        require(codeOwners[_code] != address(0), "Referral: Code Owner Does Not Exist");

        isPrivate[_code] = _isPrivate;

        emit CodeUpdated(_code, _isPrivate);
    }


    /** 
     * @notice initiated Code ownership transfer
     * @param _code Code to be transferred
     * @param _newAccount The new owner address
     * 
     */
    function setPendingCodeOwnershipTransfer(bytes32 _code, address _newAccount) external whenNotPaused {
        require(_code != bytes32(0), "Referral: invalid _code");

        address account = codeOwners[_code];
        require(msg.sender == account, "Referral: forbidden");

        pendingCodeOwners[_code] = _newAccount;
        emit SetPendingCodeOwner(msg.sender, _newAccount, _code);
    }

    /** 
     * @notice Acceptabnce Code ownership transfer
     * @param _code Code which was transferred
     */
    function acceptCodeOwnership(bytes32 _code) external whenNotPaused {
        
        address oldOwner = codeOwners[_code];
        require(pendingCodeOwners[_code] == msg.sender, "Referral: forbidden");

        delete codeOwners[codes[msg.sender]];
        delete pendingCodeOwners[codes[msg.sender]];
        
        codeOwners[_code] = msg.sender;
        codes[msg.sender] = _code;
        referrerTiers[msg.sender] = referrerTiers[oldOwner];
        emit SetCodeOwner(oldOwner, msg.sender, _code);

        delete codes[oldOwner];
        delete pendingCodeOwners[_code];
        delete referrerTiers[oldOwner];
    }

    /** 
     * @notice Sets the code owner by governance
     * @param _code The referral code
     * @param _newAccount The new owner address
     */
    function govSetCodeOwner(bytes32 _code, address _newAccount) external override onlyGov {
        require(_code != bytes32(0), "Referral: invalid _code");

        address account = codeOwners[_code];
        delete codes[account];
        delete codeOwners[codes[_newAccount]];
        delete pendingCodeOwners[_code];
        delete pendingCodeOwners[codes[_newAccount]];

        codeOwners[_code] = _newAccount;
        codes[_newAccount] = _code;
        referrerTiers[_newAccount] = referrerTiers[account];

        delete referrerTiers[account];
        emit GovSetCodeOwner(_code, _newAccount);
    }

    /** 
     * @notice Returns the trader discount and referrer information
     * @param _account The address of the trader
     * @param _fee The fee amount
     * @return traderFeesPostDiscount Trader fee post discount
     * @return referrer The address of the referrer
     * @return rebateShare The share of rebate for referrer
     */
    function traderReferralDiscount(
        address _account,
        uint _fee
    ) external override returns (uint traderFeesPostDiscount, address referrer, uint rebateShare) {
        (, referrer) = getTraderReferralInfo(_account);
        uint _tierId = referrerTiers[referrer];
        traderFeesPostDiscount = _fee - (_fee * referralTiers[_tierId].feeDiscountPct) / _BASIS_POINTS;
        rebateShare = (traderFeesPostDiscount * referralTiers[_tierId].refRebatePct) / _BASIS_POINTS;

        // Applying Volume/credit discount on top of base referral discount
        uint feeDiscount = traderFeesPostDiscount * discountTiers[traderTiers[_account]].feeDiscountPct / _BASIS_POINTS;
        traderFeesPostDiscount = traderFeesPostDiscount - feeDiscount;

        emit Discounted(_account, traderTiers[_account], feeDiscount, traderFeesPostDiscount); 

    }
    
    /**
    @notice Public method to get discount tier for a trader
     */
    function traderTier(address _trader) public view returns(uint tier){
        return traderTiers[_trader];
    }

    /** 
     * @notice Gets the code and referrer for a trader account
     * @param _account The address of the trader
     * @return code The referral code
     * @return referrer The referrer address
     */
    function getTraderReferralInfo(address _account) public view override returns (bytes32, address) {
        bytes32 code = traderReferralCodes[_account];
        address referrer;
        if (code != bytes32(0)) {
            referrer = codeOwners[code];
        }
        return (code, referrer);
    }

    // Internal function for setting trader referral code
    function _setTraderReferralCode(address _account, bytes32 _code) private {
        traderReferralCodes[_account] = _code;
        emit SetTraderReferralCode(_account, _code);
    }

    /**
    * @notice Helper method used only during migration 
    */
    function migrateCode(bytes32 _code, address _owner, uint id) external onlyGovOrHandler{
        require(_code != bytes32(0), "Referral: invalid _code");
        require(codeOwners[_code] == address(0), "Referral: code already exists");
        require(codes[_owner] == bytes32(0),"Referral: referrer already registered");

        codeOwners[_code] = _owner;
        codes[_owner] =  _code;
        referrerTiers[_owner] = id;
        isPrivate[_code]  = false;
        
        emit RegisterCode(_owner, _code);
    }

    /**
    * @notice Helper method to set traderReferral Codes
    */
    function migrateTraderReferrals(address _trader, bytes32 _code) external onlyGovOrHandler{
        traderReferralCodes[_trader] = _code;
        emit SetTraderReferralCode(_trader, _code);
    }

}
