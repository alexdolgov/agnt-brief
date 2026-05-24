// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import './interfaces/ISubVault.sol';
import './interfaces/ICollateralVault.sol';

/// @title Collateral Vault
/// @notice Manages user collateral deposits and tracks asset configurations
/// @dev Implements UUPS upgradeable pattern and handles deposit tracking
/// @custom:security-contact paras@zoth.io
contract CollateralVault is
    ICollateralVault,
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    PausableUpgradeable
{
    /// @dev SECURITY CONSIDERATIONS:
    /// - Role-based access control for admin functions
    /// - Deposit tracking integrity
    /// - Pausable for emergency situations
    /// - Upgradeable pattern safety
    /// - Zero address validations
    /// - Authorized subvault validations

    /// @dev ROLE CAPABILITIES:
    /// DEFAULT_ADMIN_ROLE:
    /// - Can grant/revoke all roles
    /// - Can upgrade contract
    /// - Can perform all admin functions
    ///
    /// ADMIN_ROLE:
    /// - Can configure assets
    /// - Can authorize subvaults
    /// - Can pause/unpause operations
    /// - Cannot grant/revoke roles

    /// @dev STATE MANAGEMENT:
    /// Normal Operation:
    /// - Deposits accepted from authorized subvaults
    /// - Asset configurations modifiable
    /// - Full tracking functionality
    ///
    /// Paused State:
    /// - No new deposits
    /// - Admin functions still active
    /// - View functions available

    /// @dev UPGRADE SAFETY:
    /// Storage Layout:
    /// - Asset configurations
    /// - User deposits
    /// - Access control state
    /// New variables must be appended
    address public router;
    /// @dev Role definitions
    bytes32 public constant ADMIN_ROLE = keccak256('ADMIN_ROLE');

    uint8 public immutable STABLE_PRICE = 1;
    /// @notice Mapping of user deposits
    /// @dev user address => array of UserDeposit structs
    mapping(address => DataTypes.UserDeposit[]) internal userDeposits;

    /// @notice Mapping of Integrated SubVaults
    /// @dev Stores all registered SubVaults and their configurations
    mapping(address => DataTypes.CollateralDetails) public collateralDetails;

    /// @notice Count of deposits per user
    /// @dev user address => deposit count
    mapping(address => uint256) public userDepositCount;

    // @notice Array to track all registered collateral addresses
    address[] private registeredCollaterals;

    /// @notice Ensures caller is the authorized router
    /// @dev Used for deposit operations
    modifier onlyRouter() {
        if (msg.sender != router) {
            revert UnauthorizedRouter(msg.sender);
        }
        _;
    }

    modifier validAddress(address addr) {
        if (addr == address(0)) {
            revert InvalidAddress(addr);
        }
        _;
    }

    function initialize(address _admin) external initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();
        __Pausable_init();

        if (_admin == address(0)) revert InvalidAddress(_admin);
        // add router
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(ADMIN_ROLE, _admin);
        _setRoleAdmin(ADMIN_ROLE, DEFAULT_ADMIN_ROLE);
    }

    /// @notice Updates admin role
    /// @param _newAdmin Address of new admin
    /// @dev Only callable by DEFAULT_ADMIN_ROLE
    function setAdmin(
        address _newAdmin
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) validAddress(_newAdmin) {
        grantRole(ADMIN_ROLE, _newAdmin);
        emit AdminChanged(msg.sender, _newAdmin);
    }

    // Add router setup function
    /// @notice Sets the router address
    /// @param _router Address of the router contract
    /// @dev Can only be set once by admin
    function setRouter(address _router) external onlyRole(ADMIN_ROLE) validAddress(_router) {
        router = _router;
        emit RouterSet(_router);
    }

    /// @notice Registers or updates a subvault configuration
    /// @dev Validates and stores subvault configuration with collateral details
    /// @param integrationType Type of integration
    /// @param collateralAddress Address of the primary/collateral asset
    /// @param subVaultAddress Address of the subvault
    /// @param price Price of the collateral
    /// @param ltv Loan to value ratio
    /// @param isActive Whether the subvault is active
    /// @param tokenType Classification of the collateral token (stable/non-stable)
    /// @custom:security Access controlled by ADMIN_ROLE
    function registerSubVault(
        string calldata integrationType,
        address collateralAddress,
        address subVaultAddress,
        uint256 price,
        uint256 ltv,
        bool isActive,
        DataTypes.TokenType tokenType
    ) external onlyRole(ADMIN_ROLE) {
        // Input validation
        if (bytes(integrationType).length == 0) revert InvalidParameters('Empty integration type');
        if (collateralAddress == address(0)) revert InvalidAddress(collateralAddress);
        if (subVaultAddress == address(0)) revert InvalidAddress(subVaultAddress);
        if (price == 0) revert InvalidPrice();
        if (ltv == 0 || ltv > 100) revert InvalidLTV();

        // Check if another subvault exists for this collateral
        if (
            collateralDetails[collateralAddress].subVaultAddress != address(0) &&
            collateralDetails[collateralAddress].subVaultAddress != subVaultAddress
        ) {
            revert SubVaultAlreadyRegistered(
                collateralAddress,
                collateralDetails[collateralAddress].subVaultAddress
            );
        }

        // Update collateral details with new configuration
        collateralDetails[collateralAddress] = DataTypes.CollateralDetails({
            integrationType: integrationType,
            collateralAddress: collateralAddress,
            subVaultAddress: subVaultAddress,
            price: price,
            ltv: ltv,
            isActive: isActive,
            registeredAt: block.timestamp,
            lastUpdatedAt: block.timestamp,
            tokenType: tokenType
        });

        // Add to registered collaterals if not already present

        registeredCollaterals.push(collateralAddress);

        // Emit event with updated configuration
        emit SubVaultRegistered(
            collateralAddress,
            subVaultAddress,
            integrationType,
            price,
            ltv,
            isActive,
            tokenType
        );
    }

    /// @notice Updates specific parameters of a subvault
    /// @param collateralAddress Address of the collateral asset
    /// @param params Update parameters
    function updateSubVaultConfig(
        address collateralAddress,
        DataTypes.SubVaultUpdateParams calldata params
    ) external onlyRole(ADMIN_ROLE) {
        DataTypes.CollateralDetails storage details = collateralDetails[collateralAddress];
        if (details.subVaultAddress == address(0)) revert AssetNotSupported(collateralAddress);

        if (params.updatePrice) {
            if (params.price == 0) revert InvalidPrice();
            details.price = params.price;
        }

        if (params.updateLTV) {
            if (params.ltv == 0 || params.ltv > 100) revert InvalidLTV();
            details.ltv = params.ltv;
        }

        if (params.updateActive) {
            details.isActive = params.isActive;
        }

        details.lastUpdatedAt = block.timestamp;

        emit SubVaultUpdated(
            collateralAddress,
            details.subVaultAddress,
            details.price,
            details.ltv,
            details.isActive
        );
    }

    function calculateMintAmount(
        address collateralAddress,
        address asset,
        DataTypes.TokenType tokenType,
        uint256 amount
    ) public view whenNotPaused returns (uint256 mintAmount) {
        if (collateralAddress == address(0)) revert InvalidAddress(collateralAddress);
        if (amount == 0) revert InvalidAmount();

        address subvault = getSubVaultAddress(collateralAddress);
        if (subvault == address(0)) revert AssetNotSupported(collateralAddress);

        DataTypes.CollateralDetails storage details = collateralDetails[collateralAddress];
        // Validate asset and subvault
        if (details.subVaultAddress == address(0)) revert AssetNotSupported(asset);
        if (!details.isActive) revert SubVaultNotActive();
        if (details.subVaultAddress != subvault) revert UnauthorizedSubVault(subvault);

        uint256 assetPrice;
        if (DataTypes.TokenType.NotStableCoin == tokenType) {
            // Try to get oracle price first
            (uint256 oraclePrice, bool success) = ISubVault(subvault).getOraclePrice(
                collateralAddress
            );
            // Use oracle price if available, otherwise fall back to stored price
            assetPrice = success ? oraclePrice / 100 : details.price;
            mintAmount = _calculateMintAmount(amount, assetPrice, details.ltv);
        }
        if (DataTypes.TokenType.StableCoin == tokenType) {
            if (!ISubVault(subvault).isAssetSupported(asset)) revert AssetNotSupported(asset);
            (uint256 oraclePrice, bool success) = ISubVault(subvault).getOraclePrice(asset);
            assetPrice = success ? oraclePrice / 100 : STABLE_PRICE * 10 ** 6;

            mintAmount = _calculateMintAmount(amount, assetPrice, details.ltv);
        }
        return _scaleAmount(mintAmount, asset);
    }

    /// @notice Records a deposit and calculates ZeUSD mint amount
    /// @dev Only callable by router when contract is not paused
    /// @param user Address of the depositor
    /// @param collateralAddress Address of the collateral asset for valuation
    /// @param asset Address of the actual deposited asset
    /// @param amount Amount of collateral/asset deposited
    /// @param subVault Address of the subvault processing this deposit
    /// @return depositId The ID of the recorded deposit
    /// @return mintAmount The amount of ZeUSD to be minted
    function recordDeposit(
        address user,
        address collateralAddress,
        address asset,
        uint256 amount,
        address subVault
    ) external onlyRouter whenNotPaused returns (uint256 depositId, uint256 mintAmount) {
        // Input validation
        if (amount == 0) revert InvalidAmount();
        if (user == address(0)) revert InvalidAddress(user);
        if (subVault == address(0)) revert InvalidAddress(subVault);

        // Load collateral details into memory for gas optimization
        DataTypes.CollateralDetails memory details = collateralDetails[collateralAddress];

        // Validate asset and subvault
        if (!details.isActive) revert SubVaultNotActive();
        if (details.subVaultAddress == address(0)) revert AssetNotSupported(collateralAddress);
        if (details.subVaultAddress != subVault) revert UnauthorizedSubVault(subVault);

        uint256 assetPrice;
        // Calculate mint amount based on collateral details and token type
        if (asset == collateralAddress) {
            // Try to get oracle price first for direct collateral deposit
            (uint256 oraclePrice, bool success) = ISubVault(subVault).getOraclePrice(
                collateralAddress
            );
            // Use oracle price if available, otherwise fall back to stored price
            assetPrice = success ? oraclePrice / 100 : details.price;
            mintAmount = _calculateMintAmount(amount, assetPrice, details.ltv);
        } else {
            // Other asset deposit (e.g., stablecoins)
            if (!ISubVault(subVault).isAssetSupported(asset)) revert AssetNotSupported(asset);
            (uint256 oraclePrice, bool success) = ISubVault(subVault).getOraclePrice(asset);
            assetPrice = success ? oraclePrice / 100 : STABLE_PRICE * 10 ** 6;

            mintAmount = _calculateMintAmount(amount, assetPrice, details.ltv);
        }

        // Get and increment deposit ID
        depositId = userDepositCount[user];
        userDepositCount[user] = depositId + 1;

        uint256 scaledMintAmount = _scaleAmount(mintAmount, asset);

        // Create new deposit record
        DataTypes.UserDeposit memory newDeposit = DataTypes.UserDeposit({
            depositId: depositId,
            collateralAddress: collateralAddress, // Store collateral address for reference
            asset: asset, // Store actual deposited asset
            amount: amount,
            zeusdMinted: scaledMintAmount,
            timestamp: block.timestamp,
            subVault: subVault,
            integrationType: details.integrationType,
            active: true,
            isPrimary: asset == collateralAddress, // Primary if asset matches collateral
            tokenType: details.tokenType
        });

        // Store deposit record
        userDeposits[user].push(newDeposit);

        // Emit deposit event
        emit DepositRecorded(
            user,
            asset,
            amount,
            depositId,
            subVault,
            details.integrationType,
            asset == collateralAddress, // isPrimary based on asset match
            mintAmount,
            details.tokenType
        );

        return (depositId, scaledMintAmount);
    }

    /// @notice Calculates amount of ZeUSD to be minted for a given collateral amount
    /// @param amount Amount of collateral being deposited
    /// @param price Price of the collateral
    /// @param ltv Loan to value ratio (1-100)
    /// @return mintAmount Amount of ZeUSD to be minted

    function _calculateMintAmount(
        uint256 amount,
        uint256 price,
        uint256 ltv
    ) internal pure returns (uint256 mintAmount) {
        uint256 collateralValue = amount * price;
        if (collateralValue / amount != price) revert CalculationOverflow();

        mintAmount = (collateralValue * ltv) / 100;

        return mintAmount;
    }

    /// @notice Scales the mint amount based on token decimals
    /// @param mintAmount Original mint amount to scale
    /// @param asset Address of the token to get decimals from
    /// @return scaledAmount Scaled mint amount accounting for decimals
    function _scaleAmount(
        uint256 mintAmount,
        address asset
    ) internal view returns (uint256 scaledAmount) {
        uint8 decimal = ERC20(asset).decimals();

        if (decimal + 6 > 18) {
            return mintAmount / 10 ** (decimal + 6 - 18);
        } else if (decimal + 6 < 18) {
            return mintAmount * 10 ** (18 - (decimal + 6));
        }
        return mintAmount;
    }

    /// @notice Updates deposit status to inactive
    /// @param user Address of the deposit owner
    /// @param depositId ID of the deposit to update
    /// @return success Whether the update was successful
    /// @return mintAmount The amount of ZeUSD that was minted for this deposit
    function deactivateDeposit(
        address user,
        uint256 depositId
    ) external onlyRouter whenNotPaused returns (bool success, uint256 mintAmount) {
        if (user == address(0)) revert InvalidAddress(user);

        // Get user's deposits
        DataTypes.UserDeposit[] storage userDepositsList = userDeposits[user];
        bool found = false;
        uint256 depositIndex;

        // Find the specific deposit
        for (uint256 i = 0; i < userDepositsList.length; i++) {
            if (userDepositsList[i].depositId == depositId) {
                depositIndex = i;
                found = true;
                break;
            }
        }

        if (!found) revert DepositNotFound(depositId);

        // Get deposit reference
        DataTypes.UserDeposit storage deposit = userDepositsList[depositIndex];

        // Check if deposit is already inactive
        if (!deposit.active) revert DepositNotActive();

        // Store mint amount before deactivating
        mintAmount = deposit.zeusdMinted;

        // Deactivate deposit
        deposit.active = false;

        emit DepositDeactivated(
            user,
            depositId,
            deposit.asset,
            deposit.amount,
            deposit.zeusdMinted,
            deposit.subVault
        );

        return (true, mintAmount);
    }

    /// @notice Removes a single deposit record
    /// @param user Address of the deposit owner
    /// @param depositId ID of the deposit to remove
    /// @return success Whether the removal was successful
    /// @return mintAmount The amount of ZeUSD that was minted for this deposit
    function removeDeposit(
        address user,
        uint256 depositId
    ) external onlyRouter whenNotPaused returns (bool success, uint256 mintAmount) {
        if (user == address(0)) revert InvalidAddress(user);

        // Get user's deposits
        DataTypes.UserDeposit[] storage userDepositsList = userDeposits[user];
        bool found = false;
        uint256 depositIndex;

        // Find the specific deposit
        for (uint256 i = 0; i < userDepositsList.length; i++) {
            if (userDepositsList[i].depositId == depositId) {
                depositIndex = i;
                found = true;
                break;
            }
        }

        if (!found) revert DepositNotFound(depositId);

        // Store mint amount before removing
        mintAmount = userDepositsList[depositIndex].zeusdMinted;

        // Remove deposit by swapping with last element and popping
        uint256 lastIndex = userDepositsList.length - 1;
        if (depositIndex != lastIndex) {
            userDepositsList[depositIndex] = userDepositsList[lastIndex];
        }
        userDepositsList.pop();

        emit DepositRemoved(
            user,
            depositId,
            userDepositsList[depositIndex].asset,
            userDepositsList[depositIndex].amount,
            mintAmount,
            userDepositsList[depositIndex].subVault
        );

        return (true, mintAmount);
    }

    /// @notice Removes multiple deposit records in bulk
    /// @param user Address of the deposit owner
    /// @param depositIds Array of deposit IDs to remove
    /// @return success Whether all removals were successful
    /// @return totalMintAmount Total amount of ZeUSD that was minted for these deposits
    function removeBulkDeposits(
        address user,
        uint256[] calldata depositIds
    ) external onlyRouter whenNotPaused returns (bool success, uint256 totalMintAmount) {
        if (user == address(0)) revert InvalidAddress(user);
        if (depositIds.length == 0) revert InvalidParameters('Empty depositIds array');

        DataTypes.UserDeposit[] storage userDepositsList = userDeposits[user];
        uint256[] memory indexesToRemove = new uint256[](depositIds.length);
        uint256 validCount = 0;

        // First pass: validate and collect indexes
        for (uint256 i = 0; i < depositIds.length; i++) {
            bool found = false;
            for (uint256 j = 0; j < userDepositsList.length; j++) {
                if (userDepositsList[j].depositId == depositIds[i]) {
                    indexesToRemove[validCount] = j;
                    totalMintAmount += userDepositsList[j].zeusdMinted;
                    validCount++;
                    found = true;
                    break;
                }
            }
            if (!found) revert DepositNotFound(depositIds[i]);
        }

        // Second pass: remove deposits (from highest index to lowest)
        for (uint256 i = validCount; i > 0; i--) {
            uint256 indexToRemove = indexesToRemove[i - 1];
            DataTypes.UserDeposit memory depositToRemove = userDepositsList[indexToRemove];

            // Remove deposit by swapping with last element and popping
            uint256 lastIndex = userDepositsList.length - 1;
            if (indexToRemove != lastIndex) {
                userDepositsList[indexToRemove] = userDepositsList[lastIndex];
            }
            userDepositsList.pop();

            emit DepositRemoved(
                user,
                depositToRemove.depositId,
                depositToRemove.asset,
                depositToRemove.amount,
                depositToRemove.zeusdMinted,
                depositToRemove.subVault
            );
        }

        return (true, totalMintAmount);
    }

    /// @notice Returns all registered subvaults and their details
    /// @return collaterals Array of collateral addresses
    /// @return details Array of corresponding CollateralDetails
    function getAllSubVaults()
        external
        view
        returns (address[] memory collaterals, DataTypes.CollateralDetails[] memory details)
    {
        uint256 length = registeredCollaterals.length;
        details = new DataTypes.CollateralDetails[](length);

        for (uint256 i = 0; i < length; i++) {
            details[i] = collateralDetails[registeredCollaterals[i]];
        }

        return (registeredCollaterals, details);
    }

    /// @notice Returns all active subvaults and their details
    /// @return collaterals Array of collateral addresses
    /// @return details Array of corresponding CollateralDetails
    function getActiveSubVaults()
        external
        view
        returns (address[] memory collaterals, DataTypes.CollateralDetails[] memory details)
    {
        uint256 length = registeredCollaterals.length;

        // First, count active vaults
        uint256 activeCount = 0;
        for (uint256 i = 0; i < length; i++) {
            if (collateralDetails[registeredCollaterals[i]].isActive) {
                activeCount++;
            }
        }

        // Create arrays of correct size
        address[] memory activeCollaterals = new address[](activeCount);
        DataTypes.CollateralDetails[] memory activeDetails = new DataTypes.CollateralDetails[](
            activeCount
        );

        // Fill arrays with active vault data
        uint256 index = 0;
        for (uint256 i = 0; i < length; i++) {
            address collateral = registeredCollaterals[i];
            if (collateralDetails[collateral].isActive) {
                activeCollaterals[index] = collateral;
                activeDetails[index] = collateralDetails[collateral];
                index++;
            }
        }

        return (activeCollaterals, activeDetails);
    }

    /// @notice Gets subvault address for a collateral asset
    /// @param collateralAddress Address of the collateral asset
    /// @return subVaultAddress Address of the corresponding subvault
    function getSubVaultAddress(
        address collateralAddress
    ) public view returns (address subVaultAddress) {
        DataTypes.CollateralDetails memory details = collateralDetails[collateralAddress];
        if (!details.isActive) revert SubVaultNotActive();
        return details.subVaultAddress;
    }

    /// @notice Gets all details for a collateral asset's subvault
    /// @param collateralAddress Address of the collateral asset
    /// @return details Full configuration details
    function getSubVaultDetails(
        address collateralAddress
    ) external view returns (DataTypes.CollateralDetails memory details) {
        return collateralDetails[collateralAddress];
    }

    /// @notice Gets all deposits for a user
    /// @param user Address of user
    /// @return Array of all user deposits
    function getUserDeposits(
        address user
    ) external view override returns (DataTypes.UserDeposit[] memory) {
        return userDeposits[user];
    }

    /// @notice Gets active deposits for a user
    /// @param user Address of user
    /// @return Array of active deposits
    /// @dev Filters out inactive deposits
    function getActiveDeposits(
        address user
    ) external view override returns (DataTypes.UserDeposit[] memory) {
        DataTypes.UserDeposit[] storage allDeposits = userDeposits[user];
        uint256 activeCount;

        for (uint i = 0; i < allDeposits.length; i++) {
            if (allDeposits[i].active) activeCount++;
        }

        DataTypes.UserDeposit[] memory activeDeposits = new DataTypes.UserDeposit[](activeCount);
        uint256 currentIndex;

        for (uint i = 0; i < allDeposits.length; i++) {
            if (allDeposits[i].active) {
                activeDeposits[currentIndex] = allDeposits[i];
                currentIndex++;
            }
        }

        return activeDeposits;
    }

    /// @notice Gets the active status of a deposit
    /// @param user Address of the deposit owner
    /// @param depositId ID of the deposit to check
    /// @return active Whether the deposit is active
    /// @return deposit The deposit details
    function getDepositStatus(
        address user,
        uint256 depositId
    ) external view returns (bool active, DataTypes.UserDeposit memory deposit) {
        DataTypes.UserDeposit[] storage userDepositsList = userDeposits[user];

        for (uint256 i = 0; i < userDepositsList.length; i++) {
            if (userDepositsList[i].depositId == depositId) {
                return (userDepositsList[i].active, userDepositsList[i]);
            }
        }

        revert DepositNotFound(depositId);
    }

    /// @notice Gets user deposits in a specific subvault
    /// @param user Address of user
    /// @param subVault Address of subvault
    /// @return Array of deposits in the subvault
    function getUserDepositsBySubVault(
        address user,
        address subVault
    ) external view override returns (DataTypes.UserDeposit[] memory) {
        DataTypes.UserDeposit[] storage allDeposits = userDeposits[user];
        uint256 count;

        for (uint i = 0; i < allDeposits.length; i++) {
            if (allDeposits[i].subVault == subVault) count++;
        }

        DataTypes.UserDeposit[] memory filteredDeposits = new DataTypes.UserDeposit[](count);
        uint256 currentIndex;

        for (uint i = 0; i < allDeposits.length; i++) {
            if (allDeposits[i].subVault == subVault) {
                filteredDeposits[currentIndex] = allDeposits[i];
                currentIndex++;
            }
        }

        return filteredDeposits;
    }

    /// @notice Gets specific deposit by ID
    /// @param user Address of user
    /// @param depositId ID of deposit
    /// @return UserDeposit struct
    /// @dev Reverts if deposit not found
    function getDepositById(
        address user,
        uint256 depositId
    ) external view override returns (DataTypes.UserDeposit memory) {
        DataTypes.UserDeposit[] storage deposits = userDeposits[user];
        for (uint i = 0; i < deposits.length; i++) {
            if (deposits[i].depositId == depositId) {
                return deposits[i];
            }
        }
        revert DepositNotFound(depositId);
    }

    /// @notice Returns count of all registered subvaults
    /// @return total Total number of registered subvaults
    /// @return active Number of active subvaults
    function getSubVaultCounts() external view returns (uint256 total, uint256 active) {
        total = registeredCollaterals.length;
        for (uint256 i = 0; i < total; i++) {
            if (collateralDetails[registeredCollaterals[i]].isActive) {
                active++;
            }
        }
        return (total, active);
    }

    // Add this to your updateSubVaultConfig function if you want to allow removing subvaults
    /// @notice Removes a subvault registration
    /// @param collateralAddress The collateral asset address of the subvault to remove
    function removeSubVault(address collateralAddress) external onlyRole(ADMIN_ROLE) {
        if (collateralDetails[collateralAddress].subVaultAddress == address(0)) {
            revert AssetNotSupported(collateralAddress);
        }

        address subVaultAddress = collateralDetails[collateralAddress].subVaultAddress;

        // Remove from registeredCollaterals array
        for (uint256 i = 0; i < registeredCollaterals.length; i++) {
            if (registeredCollaterals[i] == collateralAddress) {
                registeredCollaterals[i] = registeredCollaterals[registeredCollaterals.length - 1];
                registeredCollaterals.pop();
                break;
            }
        }

        // Delete the details
        delete collateralDetails[collateralAddress];

        emit SubVaultRemoved(collateralAddress, subVaultAddress);
    }

    /// @notice Pauses vault operations
    /// @dev Only callable by ADMIN_ROLE
    function pause() external override onlyRole(ADMIN_ROLE) {
        _pause();
    }

    /// @notice Unpauses vault operations
    /// @dev Only callable by ADMIN_ROLE
    function unpause() external override onlyRole(ADMIN_ROLE) {
        _unpause();
    }

    /// @notice Authorizes contract upgrades
    /// @param newImplementation Address of new implementation
    /// @dev Only callable by DEFAULT_ADMIN_ROLE
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
