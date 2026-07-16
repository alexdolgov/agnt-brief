// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Ownable} from "solady/auth/Ownable.sol";
import {FundingWorks} from "./FundingWorks.sol";

/// @title FundingWorksFactory
/// @author TokenWorks (https://token.works/)
contract FundingWorksFactory is Ownable {
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

    /// @notice Mapping of addresses that are authorized to launch FundingWorks contracts
    mapping(address => bool) public canLaunch;

    /// @notice Flag to allow public deployment without authorization
    bool public publicAllowed;

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

    /// @notice Thrown when caller is not authorized to launch contracts
    error NotAuthorized();
    /// @notice Thrown when address is zero
    error InvalidAddress();
    /// @notice Thrown when fee percentages don't sum to 10
    error InvalidFeePercentages();
    /// @notice Thrown when public deployment is not allowed
    error PublicDeploymentNotAllowed();
    /// @notice Thrown when parameters are invalid
    error InvalidParameters();
    /// @notice Thrown when maxSupply is out of range (1-1000)
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

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    constructor() {
        feeAddress = msg.sender;
        _initializeOwner(msg.sender);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Authorizes an address to launch FundingWorks contracts
    /// @param launcher Address to authorize
    function authorizeLauncher(address launcher) external onlyOwner {
        if (launcher == address(0)) revert InvalidAddress();
        canLaunch[launcher] = true;
    }

    /// @notice Revokes authorization from an address
    /// @param launcher Address to revoke authorization from
    function revokeLauncher(address launcher) external onlyOwner {
        if (launcher == address(0)) revert InvalidAddress();
        canLaunch[launcher] = false;
    }

    /// @notice Updates the fee percentages
    /// @param _initialPayoutPct New initial payout percentage
    /// @param _tokenWorksFeePct New TOKEN_WORKS fee percentage
    function updateFeePercentages(uint256 _initialPayoutPct, uint256 _tokenWorksFeePct) external onlyOwner {
        if (_initialPayoutPct + _tokenWorksFeePct != 10) revert InvalidFeePercentages();
        initialPayoutPct = _initialPayoutPct;
        tokenWorksFeePct = _tokenWorksFeePct;
    }

    /// @notice Updates the fee address
    /// @param _feeAddress New fee address
    function updateFeeAddress(address _feeAddress) external onlyOwner {
        if (_feeAddress == address(0)) revert InvalidAddress();
        feeAddress = _feeAddress;
    }

    /// @notice Toggles the public deployment flag
    /// @param _publicAllowed New value for public deployment flag
    function setPublicAllowed(bool _publicAllowed) external onlyOwner {
        publicAllowed = _publicAllowed;
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

    /// @notice Internal function to check if an address can launch contracts
    /// @param launcher Address to check
    /// @param builder Address that will be the owner
    /// @return bool True if the address can launch contracts
    function _launchChecks(address launcher, address builder) internal view returns (bool) {
        // If launcher is the owner or has explicit permission, they can deploy for any builder
        if (launcher == owner() || canLaunch[launcher]) {
            return true;
        }
        
        // For public deployments, launcher must be the same as builder unless launcher is owner
        if (publicAllowed) {
            return launcher == builder;
        }
        
        return false;
    }

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
    ) external returns (FundingWorks) {
        if (!_launchChecks(msg.sender, builder)) revert NotAuthorized();
        
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

        canLaunch[msg.sender] = false;
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
} 