// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {EIP712Upgradeable} from "@openzeppelin-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {IPackSale} from "../interfaces/IPackSale.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title PackSale contract.
 */
contract PackSale is AccessControlUpgradeable, ReentrancyGuardUpgradeable, UUPSUpgradeable, EIP712Upgradeable, IPackSale {

    using SafeERC20 for IERC20;

    //Roles.
    bytes32 public constant GOVERNOR_ROLE = keccak256("GOVERNOR_ROLE");
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    //EIP-712 TypeHash for buy pack authorization.
    bytes32 public constant BUYPACK_TYPEHASH = keccak256(
        "BuyPack(address buyer,uint256 spendingLimit,address userSmartWalletAddress)"
    );

    //Transaction signer address from app.
    address public txSigner;

    //Treasury wallet address.
    address public treasuryWallet;

    //USDC token.
    IERC20 public usdcToken;

    //Total packs available to buy.
    uint256 public TOTAL_PACKS;

    //Total packs bought across all users.
    uint256 public totalPacksBought;

    //Price of each pack.
    uint256 public PACK_PRICE;

    //Sale enablemment flag.
    bool public saleEnabled;

    //User -> Number of packs bought.
    mapping(address => uint32) public packsBought;

    //User -> Amount of USDC spent on packs.
    mapping(address => uint256) public spentOnPacks;

    //FDF wallet address -> paying user addresses.
    mapping(address => address[]) public fdfWalletLookup;

    //FDF wallet address -> paying user address -> has been used.
    mapping(address => mapping(address => bool)) private payingWalletUsed;

    //Tracks all the users that bought in the pack sale.
    address[] public packSaleBuyers;

    // Storage gap for future upgrades
    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * Initialize the PackSale contract.
     * @param _usdcTokenAddress The address of the USDC token.
     * @param _governorAddress Address that will receive GOVERNOR_ROLE and ADMIN_ROLE.
     */
    function initialize(address _usdcTokenAddress, address _governorAddress) external initializer {
        if (_usdcTokenAddress == address(0) || _governorAddress == address(0)) revert ZeroAddress();

        __AccessControl_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
        __EIP712_init("FDF PackSale", "1");

        usdcToken = IERC20(_usdcTokenAddress);
        
        TOTAL_PACKS = 250_000;
        PACK_PRICE = 20 * 10**6; // 20 USDC
        saleEnabled = false;
        totalPacksBought = 0;

        _setRoleAdmin(GOVERNOR_ROLE, GOVERNOR_ROLE);
        _setRoleAdmin(ADMIN_ROLE, GOVERNOR_ROLE);
        
        _grantRole(GOVERNOR_ROLE, _governorAddress);
        _grantRole(ADMIN_ROLE, _governorAddress);      
    }

    /**
     * Allows for multiple packs to be bought at the pack sale event.
     * @param _numOfPacks Number of packs being bought.
     * @param _spendingLimit The amount of USDC the buyer is allowed to spend.
     * @param _signature The signature of the buyer.
     * @param _userSmartWalletAddress The FDF wallet where the user will receive the Pack Sale Reveal.
     */
    function buyPacks(uint32 _numOfPacks, uint256 _spendingLimit, bytes calldata _signature, address _userSmartWalletAddress) external nonReentrant {
        if(!saleEnabled) revert SaleNotActive();
        if(_numOfPacks == 0) revert InvalidPackAmountBought();
        if(totalPacksBought + _numOfPacks > TOTAL_PACKS) revert NoPacksAvailable(); 
        if(_userSmartWalletAddress == address(0)) revert ZeroAddress();

        //Create EIP-712 structured hash for buy pack operation.
        bytes32 structHash = keccak256(abi.encode(
            BUYPACK_TYPEHASH, 
            msg.sender, 
            _spendingLimit, 
            _userSmartWalletAddress
        ));
        
        bytes32 digest = keccak256(abi.encodePacked("\x19\x01", _domainSeparatorV4(), structHash));
        
        //Verify signature was created by txSigner.
        if (ECDSA.recover(digest, _signature) != txSigner) revert InvalidSignature();

        //Calculate total price of packs.
        uint256 totalPrice = _numOfPacks * PACK_PRICE;
        
        if(spentOnPacks[_userSmartWalletAddress] + totalPrice > _spendingLimit) revert PackSpendingLimitReached(); //Buyer reached their pack spending limit.

        if(spentOnPacks[_userSmartWalletAddress] == 0){
            packSaleBuyers.push(_userSmartWalletAddress); //Track FDF wallets.
        }

        //Check if this paying wallet has been used before for this FDF wallet.
        if(!payingWalletUsed[_userSmartWalletAddress][msg.sender]) {
            fdfWalletLookup[_userSmartWalletAddress].push(msg.sender);
            payingWalletUsed[_userSmartWalletAddress][msg.sender] = true;
        }

        spentOnPacks[_userSmartWalletAddress] += totalPrice; //Total spent for user.
        packsBought[_userSmartWalletAddress] += _numOfPacks; //Packs bought for user.

        //Handle Payment. Payment from the connected wallet, not FDF wallet.
        usdcToken.safeTransferFrom(msg.sender, treasuryWallet, totalPrice);

        totalPacksBought += _numOfPacks; //Track total packs bought.

        emit UserBoughtPacks(_numOfPacks, msg.sender, _userSmartWalletAddress, totalPrice);
    }

    /**
     * Allow admins to set the price of a pack.
     * @param _newPackPrice The new price of a pack in USDC.
     */
    function setPackPrice(uint256 _newPackPrice) external onlyRole(GOVERNOR_ROLE) {
        if(_newPackPrice < 1 * 10**6) revert InvalidPackPrice();

        PACK_PRICE = _newPackPrice;
        emit PackPriceChanged(_newPackPrice);
    }

    /**
     * Returns the wallets that have bought packs for a given FDF wallet.
     * @param _fdfWallet The FDF wallet address.
     */
    function getWalletsByFdfWallet(address _fdfWallet) external view returns(address[] memory){
        if(_fdfWallet == address(0)) revert ZeroAddress();

        return fdfWalletLookup[_fdfWallet];
    }

    /**
     * Returns the number of packs that the user has bought.
     * @param _account The address of the user.
     */
    function getPacksBoughtByUser(address _account) external view returns(uint32){
        if(_account == address(0)) revert ZeroAddress();
        
        return packsBought[_account];
    }

    /**
     * Returns the amount of USDC spent on packs by the user.
     * @param _account The address of the user.
     */
    function getTotalSpentByUser(address _account) external view returns(uint256){
        if(_account == address(0)) revert ZeroAddress();
        
        return spentOnPacks[_account];
    }

    /**
     * Returns the total amount of USDC spent by all users.
     */
    function getTotalInvested() external view returns(uint256){
        uint256 totalInvested = 0;
        for(uint256 i = 0; i < packSaleBuyers.length;) {
            totalInvested += spentOnPacks[packSaleBuyers[i]];

            unchecked {
                i++;
            }
        }
        
        return totalInvested;
    }

    /**
     * Returns an array of addresses that bought in the pack sale.
     */
    function getPackBuyers() external view returns(address[] memory){        
        return packSaleBuyers;
    }

    /**
     * Allow admins to set the sale enabled flag.
     * @param _enabled The new enabled state.
     */
    function setSaleEnabled(bool _enabled) external onlyRole(GOVERNOR_ROLE) {
        saleEnabled = _enabled;

        emit SaleEnabledChanged(_enabled);
    }

    /**
     * Sets the txSigner address of the signatures
     * @param _newTxSigner the new txSigner address
     */
    function setTxSigner(address _newTxSigner) external onlyRole(GOVERNOR_ROLE) {
        if (_newTxSigner == address(0)) revert ZeroAddress();

        txSigner = _newTxSigner;
        emit TxSignerChanged(_newTxSigner);
    }

    /**
     * Sets the USDC token address.
     * @param _newUsdcTokenAddress the new USDC token address
     */
    function setUsdcToken(address _newUsdcTokenAddress) external onlyRole(GOVERNOR_ROLE) {
        if (_newUsdcTokenAddress == address(0)) revert ZeroAddress();

        usdcToken = IERC20(_newUsdcTokenAddress);
        
        emit UsdcTokenChanged(_newUsdcTokenAddress);
    }

    /**
     * Sets the treasury wallet address.
     * @param _newTreasuryWallet the new treasury wallet address
     */
    function setTreasuryWallet(address _newTreasuryWallet) external onlyRole(GOVERNOR_ROLE) {
        if (_newTreasuryWallet == address(0)) revert ZeroAddress();

        treasuryWallet = _newTreasuryWallet;
        emit TreasuryWalletChanged(_newTreasuryWallet);
    }

    /**
     * Sets the total packs available to buy in the pack sale.
     * @param _newTotalPacks the new total packs available to buy.
     */
    function setTotalPacks(uint256 _newTotalPacks) external onlyRole(GOVERNOR_ROLE) {
        if(_newTotalPacks == 0) revert InvalidTotalPacks();

        TOTAL_PACKS = _newTotalPacks;
        emit TotalPacksChanged(_newTotalPacks);
    }

    /*    
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(AccessControlUpgradeable) returns (bool) {
        return interfaceId == type(IPackSale).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @notice Required by the UUPSUpgradeable module
     * @dev Only allows governors to upgrade the implementation
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(GOVERNOR_ROLE) {}
}
