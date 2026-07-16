// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "solady/auth/Ownable.sol";

import "./interfaces/IERC20.sol";
import "./interfaces/IStratosphere.sol";

error GenesisStaking__ClaimsDisabled();
error GenesisStaking__DepositsDisabled();
error GenesisStaking__InvalidAddress();
error GenesisStaking__InvalidAmount();
error GenesisStaking__NotEnoughVPNDToDeposit();
error GenesisStaking__NoVAPEToClaim();
error GenesisStaking__OnlyStratosphereMembers();
error GenesisStaking__VAPEAlreadyUpdated();

/// @title GenesisStaking
/// @author mektigboy
/// @notice Genesis Staking contract
/// @dev Utilizes 'Ownable', 'IERC20', 'IStratosphere'
contract GenesisStaking is Ownable {
    //////////////
    /// EVENTS ///
    //////////////

    event VAPEUpdated(address vape);

    event FeeCollectorUpdated(address oldFeeCollector, address newFeeCollector);

    event Deposit(address indexed account, uint256 amount);

    event Claim(address indexed account, uint256 amount);

    event Retrieve(uint256 vpndAmount, uint256 vapeAmount);

    ///////////////////////
    /// PRIVATE STORAGE ///
    ///////////////////////

    IERC20 immutable s_vpnd;

    IERC20 immutable s_vape;

    IStratosphere immutable s_stratosphere;

    address constant BURN_WALLET = 0x000000000000000000000000000000000000dEaD;

    address s_feeCollector;

    uint256 s_tvl;

    mapping(address => uint256) s_depositOf;

    //////////////////////
    /// PUBLIC STORAGE ///
    //////////////////////

    uint256 public immutable deployment;

    uint256 public immutable depositsStartAt;

    uint256 public immutable depositsEndAt;

    uint256 public immutable claimsStartAt;

    ////////////////
    /// CONSTANS ///
    ////////////////

    uint256 public constant VAPE_TO_DISTRIBUTE = 420000 * 1e18;

    /////////////////
    /// MODIFIERS ///
    /////////////////

    /// @dev Mark function as only callable with a valid address
    /// @param _address The address to check
    modifier onlyValidAddress(address _address) {
        if (_address == address(0)) revert GenesisStaking__InvalidAddress();

        _;
    }

    /// @dev Mark function as only callable by a Stratosphere member
    modifier onlyStratosphereMembers() {
        if (s_stratosphere.tokenIdOf(msg.sender) == 0) revert GenesisStaking__OnlyStratosphereMembers();

        _;
    }

    /// @dev Mark function as only callable when deposits are enabled
    modifier depositsEnabled() {
        if (block.timestamp < depositsStartAt || block.timestamp > depositsEndAt)
            revert GenesisStaking__DepositsDisabled();

        _;
    }

    /// @dev Mark function as only callable when claims are enabled
    modifier claimsEnabled() {
        if (block.timestamp < claimsStartAt) revert GenesisStaking__ClaimsDisabled();

        _;
    }

    ///////////////////
    /// CONSTRUCTOR ///
    ///////////////////

    constructor(address _vpnd, address _vape, address _stratosphere, address _feeCollector) {
        if (_vpnd == address(0) || _vape == address(0) || _stratosphere == address(0))
            revert GenesisStaking__InvalidAddress();

        _initializeOwner(msg.sender);

        deployment = block.timestamp;
        depositsStartAt = 1673625600;
        depositsEndAt = depositsStartAt + 30 days;
        claimsStartAt = depositsEndAt;

        s_vpnd = IERC20(_vpnd);
        s_vape = IERC20(_vape);
        s_stratosphere = IStratosphere(_stratosphere);
        s_feeCollector = _feeCollector;
    }

    //////////////////////
    /// EXTERNAL LOGIC ///
    //////////////////////

    /// @notice Deposit VPND to stake
    /// @param _vpndAmount The amount of VPND to deposit
    function deposit(uint256 _vpndAmount) external onlyStratosphereMembers depositsEnabled {
        if (_vpndAmount == 0) revert GenesisStaking__InvalidAmount();
        if (_vpndAmount > s_vpnd.balanceOf(msg.sender)) revert GenesisStaking__NotEnoughVPNDToDeposit();

        (uint256 vpndFee, uint256 vpndAmountAfterFee) = calculateDepositFee(_vpndAmount);

        unchecked {
            s_depositOf[msg.sender] += vpndAmountAfterFee;
            s_tvl += vpndAmountAfterFee;
        }

        s_vpnd.transferFrom(msg.sender, BURN_WALLET, vpndFee);
        s_vpnd.transferFrom(msg.sender, address(this), vpndAmountAfterFee);

        emit Deposit(msg.sender, vpndAmountAfterFee);
    }

    /// @notice Claim all the earned VAPE of an account
    function claim() external claimsEnabled {
        uint256 vpndAmount = s_depositOf[msg.sender];

        if (vpndAmount == 0) revert GenesisStaking__NoVAPEToClaim();

        uint256 vapeAmount = _calculateEarnedVAPE(vpndAmount);

        unchecked {
            s_depositOf[msg.sender] -= vpndAmount;
        }

        (uint256 vapeFee, uint256 vapeAmountAfterFee) = calculateClaimFee(vapeAmount);

        s_vape.transfer(s_feeCollector, vapeFee);
        s_vape.transfer(msg.sender, vapeAmountAfterFee);

        emit Claim(msg.sender, vapeAmountAfterFee);
    }

    /// @notice Retrieve all the tokens locked inside this contract
    /// @param _to Recipient
    /// @dev Only owner can call this function, only use in case of emergency
    function retrieve(address _to) external onlyOwner {
        if (_to == address(0)) revert GenesisStaking__InvalidAddress();

        uint256 vpndAmount = s_vpnd.balanceOf(address(this));
        s_vpnd.transfer(_to, s_vpnd.balanceOf(address(this)));

        uint256 vapeAmount = s_vape.balanceOf(address(this));
        s_vape.transfer(_to, vapeAmount);

        emit Retrieve(vpndAmount, vapeAmount);
    }

    ////////////////////
    /// PUBLIC LOGIC ///
    ////////////////////

    /// @notice Calculate the deposit fee and the VPND amount after the fee is applied
    /// @param _vpndAmount The amount of VPND
    function calculateDepositFee(
        uint256 _vpndAmount
    ) public pure returns (uint256 vpndFee, uint256 vpndAmountAfterFee) {
        assembly {
            vpndFee := div(mul(_vpndAmount, 1), 100)
            vpndAmountAfterFee := sub(_vpndAmount, vpndFee)
        }
    }

    /// @notice Calculate the claim fee and the VAPE amount after the fee is applied
    /// @param _vapeAmount The amount of VAPE
    function calculateClaimFee(uint256 _vapeAmount) public pure returns (uint256 vapeFee, uint256 vapeAmountAfterFee) {
        assembly {
            vapeFee := div(mul(_vapeAmount, 3), 100)
            vapeAmountAfterFee := sub(_vapeAmount, vapeFee)
        }
    }

    //////////////////////
    /// INTERNAL LOGIC ///
    //////////////////////

    /// @notice Calculate the amount of VAPE earned by an account
    function _calculateEarnedVAPE(uint256 _vpndAmount) internal view returns (uint256) {
        if (_vpndAmount == 0) return 0;

        return (_vpndAmount * VAPE_TO_DISTRIBUTE) / s_tvl;
    }

    ////////////////
    /// SETTINGS ///
    ////////////////

    /// @notice Update the address of the fee collector
    /// @param _feeCollector The new address of the fee collector
    function updateFeeCollector(address _feeCollector) external onlyOwner onlyValidAddress(_feeCollector) {
        address oldFeeCollector = s_feeCollector;

        s_feeCollector = _feeCollector;

        emit FeeCollectorUpdated(oldFeeCollector, s_feeCollector);
    }

    ///////////////
    /// GETTERS ///
    ///////////////

    /// @notice Get the address of VPND
    function vpnd() external view returns (address) {
        return address(s_vpnd);
    }

    /// @notice Get the address of VAPE
    function vape() external view returns (address) {
        return address(s_vape);
    }

    /// @notice Get the address of Stratosphere
    function stratosphere() external view returns (address) {
        return address(s_stratosphere);
    }

    /// @notice Get the address of the burn wallet
    function burnWallet() external pure returns (address) {
        return BURN_WALLET;
    }

    /// @notice Get the address of the fee collector
    function feeCollector() external view returns (address) {
        return s_feeCollector;
    }

    /// @notice Get the amount of VAPE to distribute
    function vapeToDistribute() external view returns (uint256) {
        return s_vape.balanceOf(address(this));
    }

    /// @notice Get the total value locked of VPND
    function tvl() external view returns (uint256) {
        return s_tvl;
    }

    /// @notice Get the VPND balance of an account
    /// @param _account The account to check
    function vpndAccountBalance(address _account) external view returns (uint256) {
        return s_depositOf[_account];
    }
}
