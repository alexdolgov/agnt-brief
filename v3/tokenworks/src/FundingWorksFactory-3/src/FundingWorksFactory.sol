// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Ownable} from "solady/auth/Ownable.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";

import {FundingWorks} from "./FundingWorks.sol";

/// @title FundingWorksFactory - Permissionlessly launch FundingWorks campaigns.
/// @author TokenWorks (https://token.works/)
contract FundingWorksFactory is Ownable, ReentrancyGuard {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™                ™™™™™™™™™™™                ™™™™™™™™™™™ */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™               ™™™™™™™™™™™™               ™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™              ™™™™™™™™™™™™™              ™™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™            ™™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /*                ™™™™™™™™™™™            ™™™™™™™™™™™           ™™™™™™™™™™™™™™™           ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™        ™™™™™™™™™™™™™™™™™™™        ™™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™™       ™™™™™™™™™ ™™™™™™™™™       ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™™ ™™™™™™™™™™      ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™   ™™™™™™™™™      ™™™™™™™™™™       */
    /*                ™™™™™™™™™™™                ™™™™™™™™™™    ™™™™™™™™™™    ™™™™™™™™™    ™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™   ™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™  ™™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™         */
    /*                ™™™™™™™™™™™                  ™™™™™™™™™™™™™™™™™™™™       ™™™™™™™™™™™™™™™™™™™™          */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                    ™™™™™™™™™™™™™™™™           ™™™™™™™™™™™™™™™™            */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                      ™™™™™™™™™™™™               ™™™™™™™™™™™™              */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Flag to allow deployments of new FundingWorks campaigns
    bool public deploymentsActive;
    /// @notice Price to launch a new campaign to avoid spam
    uint256 public priceToDeploy;
    /// @notice Initial payout percentage taken from mint price for owner
    uint256 public initialPayoutPct = 7;
    /// @notice Fee percentage taken from mint price for feeAddress
    uint256 public tokenWorksFeePct = 3;
    /// @notice Mint period duration in seconds
    uint256 public constant mintPeriod = 7 days;
    /// @notice Address to send platform fees to
    address public feeAddress;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Thrown when address is zero
    error InvalidAddress();
    /// @notice Thrown when the amount of ETH doesnt match the deploy fee
    error InvalidDeployFee();
    /// @notice Thrown when fee percentages are too high
    error InvalidFeePercentages();
    /// @notice Thrown when deployments are disabled
    error DeploymentsDisabled();
    /// @notice Thrown when parameters are invalid
    error InvalidParameters();
    /// @notice Thrown when maxSupply is out of range (10-1000)
    error InvalidMaxSupply();
    /// @notice Thrown when mintPrice is out of range (0.01-1 ETH)
    error InvalidMintPrice();
    /// @notice Thrown when vestingPeriod is out of range (30-365 days)
    error InvalidVestingPeriod();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Event emitted when a new FundingWorks instance is launched
    event FundingWorksLaunched(
        address indexed fundingWorks,
        uint256 maxSupply,
        uint256 mintPrice,
        uint256 mintPeriod,
        uint256 vestingPeriod,
        uint256 initialPayoutPct,
        uint256 tokenWorksFeePct,
        address indexed deployer,
        address indexed tokenWorks,
        bool uniqueTokenMetadata,
        bool unlockAfterVesting,
        string ipfsHash,
        string tokenName,
        string tokenSymbol
    );

    /// @notice Event emitted when fee percentages are updated
    /// @param initialPayoutPct New initial payout percentage
    /// @param tokenWorksFeePct New TOKEN_WORKS fee percentage
    event FeePercentagesUpdated(uint256 initialPayoutPct, uint256 tokenWorksFeePct);

    /// @notice Event emitted when the fee address is updated
    /// @param feeAddress New fee address
    event FeeAddressUpdated(address indexed feeAddress);

    /// @notice Event emitted when the deploy fee is updated
    /// @param priceToDeploy New deploy fee in wei
    event DeployFeeUpdated(uint256 priceToDeploy);

    /// @notice Event emitted when deployments are toggled active/inactive
    /// @param deploymentsActive New state of deploymentsActive
    event DeploymentsToggled(bool deploymentsActive);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    constructor(address _feeAddress) {
        if (_feeAddress == address(0)) revert InvalidAddress();
        feeAddress = _feeAddress;
        priceToDeploy = 0.1 ether;
        _initializeOwner(msg.sender);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Updates the fee percentages
    /// @param _initialPayoutPct New initial payout percentage
    /// @param _tokenWorksFeePct New TOKEN_WORKS fee percentage
    function updateFeePercentages(uint256 _initialPayoutPct, uint256 _tokenWorksFeePct) external onlyOwner {
        if (_initialPayoutPct + _tokenWorksFeePct > 20) revert InvalidFeePercentages();
        initialPayoutPct = _initialPayoutPct;
        tokenWorksFeePct = _tokenWorksFeePct;
        emit FeePercentagesUpdated(_initialPayoutPct, _tokenWorksFeePct);
    }

    /// @notice Updates the fee address
    /// @param _feeAddress New fee address
    function updateFeeAddress(address _feeAddress) external onlyOwner {
        if (_feeAddress == address(0)) revert InvalidAddress();
        feeAddress = _feeAddress;
        emit FeeAddressUpdated(_feeAddress);
    }

    /// @notice Updates the deploy fee required to launch a new campaign
    /// @param _priceToDeploy The new deploy fee in wei
    function updateDeployFee(uint256 _priceToDeploy) external onlyOwner {
        priceToDeploy = _priceToDeploy;
        emit DeployFeeUpdated(_priceToDeploy);
    }

    /// @notice Toggles the deployment activity state
    function toggleDeploymentsActive() external onlyOwner {
        deploymentsActive = !deploymentsActive;
        emit DeploymentsToggled(deploymentsActive);
    }

    /// @notice Emergency function to withdraw all ETH from the contract
    /// @param _to Address to send the ETH to
    /// @dev Only callable by owner, allows recovery of accidentally sent ETH
    function emergencyWithdrawETH(address _to) external onlyOwner {
        uint256 balance = address(this).balance;
        SafeTransferLib.forceSafeTransferETH(_to, balance);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Internal function to validate FundingWorks parameters
    /// @param maxSupply Maximum number of tokens that can be minted
    /// @param mintPrice Price in ETH required to mint one token
    /// @param vestingPeriod Duration of the vesting period in seconds
    /// @param builder Address that will be set as the owner of the contract
    /// @param tokenName Name of the token
    /// @param tokenSymbol Symbol of the token
    function _validParameters(
        uint256 maxSupply,
        uint256 mintPrice,
        uint256 vestingPeriod,
        address builder,
        string memory tokenName,
        string memory tokenSymbol
    ) internal view {
        if (builder == address(0)) revert InvalidParameters();
        if (bytes(tokenName).length == 0) revert InvalidParameters();
        if (bytes(tokenSymbol).length == 0) revert InvalidParameters();

        if (maxSupply < 10 || maxSupply > 1000) revert InvalidMaxSupply();
        if (mintPrice < 0.01 ether || mintPrice > 1 ether) revert InvalidMintPrice();
        if (vestingPeriod < 30 days || vestingPeriod > 365 days) revert InvalidVestingPeriod();
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Deploys a new FundingWorks contract
    /// @param builder Address that will be set as the owner of the contract
    /// @param maxSupply Maximum number of tokens that can be minted
    /// @param mintPrice Price in ETH required to mint one token
    /// @param vestingPeriod Duration of the vesting period in seconds
    /// @param ipfsHash IPFS hash for token metadata
    /// @param tokenName Name of the token
    /// @param tokenSymbol Symbol of the token
    /// @return The address of the newly deployed FundingWorks contract
    function launchFundingWorks(
        address builder,
        uint256 maxSupply,
        uint256 mintPrice,
        uint256 vestingPeriod,
        string memory ipfsHash,
        bool uniqueTokenMetadata,
        bool unlockAfterVesting,
        string memory tokenName,
        string memory tokenSymbol
    ) external payable nonReentrant returns (FundingWorks) {        
        if (!deploymentsActive) revert DeploymentsDisabled();
        if (msg.value != priceToDeploy) revert InvalidDeployFee();

        // Validate parameters
        _validParameters(
            maxSupply,
            mintPrice,
            vestingPeriod,
            builder,
            tokenName,
            tokenSymbol
        );

        FundingWorks fundingWorks = new FundingWorks(
            maxSupply,
            mintPrice,
            mintPeriod,
            vestingPeriod,
            initialPayoutPct,
            tokenWorksFeePct,
            builder, 
            feeAddress,
            ipfsHash,
            uniqueTokenMetadata,
            unlockAfterVesting,
            tokenName,
            tokenSymbol
        );

        // Send deploy fee to feeAddress
        SafeTransferLib.forceSafeTransferETH(feeAddress, msg.value);

        emit FundingWorksLaunched(
            address(fundingWorks),
            maxSupply,
            mintPrice,
            mintPeriod,
            vestingPeriod,
            initialPayoutPct,
            tokenWorksFeePct,
            msg.sender,
            feeAddress,
            uniqueTokenMetadata,
            unlockAfterVesting,
            ipfsHash,
            tokenName,
            tokenSymbol
        );

        return fundingWorks;
    }

    receive() external payable {}
} 