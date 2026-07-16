// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts/proxy/Clones.sol";
import "./BIFKN314.sol";
import "./BIFKN314FeeHook.sol";
import "./interfaces/IERC314.sol";
import "./interfaces/IBIFKN314FeeHook.sol";
import "./interfaces/IBIFKN314Factory.sol";
import "./interfaces/IBIFKN314FactoryV2.sol";
import "./Burst/interfaces/IBurstToken.sol";

/**
 * @title BIFKN314Factory
 * @dev The BIFKN314Factory contract deploys new instances of the BIFKN314 contract.
 * It also stores the details of the deployed BIFKN314 contracts and their corresponding LP tokens.
 * It allows the fee setter to set the feeTo address, the feeToSetter address, and the fee distribution threshold.
 * The contract is owned by the deployer and inherits the ReentrancyGuard and Ownable contracts.
 * The contract also implements the IBIFKN314Factory interface.
 * The contract also implements the IBIFKN314FeeHandler interface. Which enables the BIFKN314 contract to distribute fees.
 * The contract emits events for BIFKN314 deployment, feeTo address setting, feeToSetter address setting, and fee distribution threshold setting.
 * The contract also defines custom errors for invalid addresses, empty names, long names, empty symbols, long symbols, invalid fee setters, and unauthorized access.
 */

contract BIFKN314FactoryV2 is
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    IBIFKN314FactoryV2,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable
{
    using Clones for address;

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    bytes32 public constant FEE_TO_SETTER_ROLE =
        keccak256("FEE_TO_SETTER_ROLE");
    bytes32 public constant BURST_DEPLOYER_ROLE =
        keccak256("BURST_DEPLOYER_ROLE");
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

    uint256 public constant SCALE_FACTOR = 10000; // 100%
    uint256 public constant MAX_BASE_SWAP_RATE = 500; // 5%

    /**
     * @dev Struct to store the information of a BIFKN314 token.
     * @param name The name of the BIFKN314 token.
     * @param symbol The symbol of the BIFKN314 token.
     * @param totalSupply The total supply of the BIFKN314 token.
     * @param tokenAddress The address of the BIFKN314 token.
     * @param lpAddress The address of the LP (Liquidity Provider) token.
     * @param deployer The address of the deployer of the token.
     */
    struct TokenInfo {
        string name;
        string symbol;
        uint256 totalSupply;
        address tokenAddress;
        address lpAddress;
        address deployer;
    }

    /**
     * @dev Mapping to store the addresses of bifkn314 contracts deployed by each deployer.
     * The key of the mapping is the deployer's address, and the value is an array of bifkn314 contract addresses.
     */
    mapping(address deployer => address[] tokenAddresses)
        public tokenAddressesByDeployer;

    /**
     * @dev Mapping to store TokenInfo structs by BIFKN314 contract address.
     * tokenAddress => tokenInfo
     */
    mapping(address tokenAddress => TokenInfo tokenInfo)
        public tokenInfoByTokenAddress;

    /**
     * @dev An array that stores the addresses of all instances of the BIFKN314 contract.
     */
    address[] public allTokens;

    /**
     * @dev The feeRate variable represents the fee rate for a specific operation.
     * The default value is set to 10, which is equivalent to 0.1%.
     * It's based on a scale of 10000, where 10000 is equivalent to 100%.
     * The fee is calculated as (amount * feeRate) / 10000.
     * The fee is deducted from the amount and sent to the feeTo address.
     * So if the feeRate is 10, 0.1% of the amount will be deducted as a fee.
     */
    uint256 public feeRate;

    /**
     * @dev The address variable `feeTo` represents the address where the fees will be sent to.
     */
    address public feeTo;

    /**
     * @dev The threshold for fee distribution.
     * If the fee is greater than or equal to this threshold, it will be distributed.
     * The default value is set to 1 ether. This should be set based on the chain's native token.
     */
    uint256 public feeDistributionThreshold;

    /**
     * @dev The deployment fee for deploying a new BIFKN314 contract.
     */
    uint256 public deploymentFee;

    /**
     * @dev The address of the BIFKN314 implementation contract.
     */
    BIFKN314 public bifkn314Implementation;

    /**
     * @dev The address of the BurstToken implementation contract.
     */
    IBurstToken public burstTokenImplementation;

    /**
     * All new state variables must be added below this line.
     * =====================================================
     */

    mapping(uint8 => address) public feeHookImplementations;
    mapping(address => IBIFKN314FeeHook) public tokenFeeHooks;
    uint256 public defaultLpFeePortion;
    uint256 public defaultProtocolFeePortion;
    uint256 public defaultBaseSwapRate;

    /**
     * @dev This private state variable reserves 50 slots (at start) for future state variables.
     */
    uint256[45] private __gap; // This should be reduced for each new variable added

    /**
     * @dev Initializes the BIFKN314Factory contract with the specified bifkn314 implementation.
     * @param bifkn314Implementation_ The address of the BIFKN314 implementation contract.
     */
    function initialize(
        BIFKN314 bifkn314Implementation_,
        IBurstToken burstTokenImplementation_
    ) public initializer {
        __AccessControl_init();
        __ReentrancyGuard_init();
        __Pausable_init();
        __UUPSUpgradeable_init();

        if (address(bifkn314Implementation_) == address(0))
            revert InvalidAddress();
        if (address(burstTokenImplementation_) == address(0))
            revert InvalidAddress();

        feeTo = msg.sender;
        feeRate = 10; // 0.1%
        deploymentFee = 0 ether;
        feeDistributionThreshold = 0.5 ether;

        bifkn314Implementation = bifkn314Implementation_;
        burstTokenImplementation = burstTokenImplementation_;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MANAGER_ROLE, msg.sender);
        _grantRole(FEE_TO_SETTER_ROLE, msg.sender);
        _grantRole(UPGRADER_ROLE, msg.sender);

        pause();
    }

    function initializeDefaults() public reinitializer(2) {
        defaultLpFeePortion = 1000; // 10%
        defaultProtocolFeePortion = 9000; // 90%
        defaultBaseSwapRate = 30; // 0.3%
    }

    /**
     * @dev Initializes the factory with data from the previous factory.
     */
    function initializeFromPreviousFactory(
        IBIFKN314Factory previousFactory,
        uint256 start,
        uint256 end
    ) external onlyRole(MANAGER_ROLE) {
        if (address(previousFactory) == address(0))
            revert PreviousFactoryNotSet();
        if (end >= previousFactory.allTokensLength()) revert OutOfBounds();
        if (end < start) revert InvalidRange();

        for (uint256 i = start; i <= end; i++) {
            address tokenAddr = previousFactory.allTokens(i);
            (
                string memory name,
                string memory symbol,
                uint256 totalSupply,
                address tokenAddress,
                address lpAddress,
                address deployer
            ) = previousFactory.tokenInfoByTokenAddress(tokenAddr);

            if (tokenInfoByTokenAddress[tokenAddr].tokenAddress != address(0))
                continue; // Skip if already exists

            TokenInfo memory info = TokenInfo(
                name,
                symbol,
                totalSupply,
                tokenAddress,
                lpAddress,
                deployer
            );
            tokenInfoByTokenAddress[tokenAddr] = info;
            tokenAddressesByDeployer[info.deployer].push(tokenAddr);
            allTokens.push(tokenAddr);
        }
    }

    /**
     * @dev Deploys a new BIFKN314 contract.
     * @param tokenName The name of the BIFKN314 contract.
     * @param tokenSymbol The symbol of the BIFKN314 contract.
     * @param owner_ The address of the owner of the BIFKN314 contract.
     * @param totalSupply The total supply of the BIFKN314 contract.
     * @param tradingFee The trading fee for the BIFKN314 contract.
     * @param maxWalletPercent The maximum wallet percentage for the BIFKN314 contract.
     * @param metadataURI The metadata URI for the BIFKN314 contract.
     */
    function deployBIFKN314(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply,
        address owner_,
        uint256 tradingFee,
        uint256 maxWalletPercent,
        string memory metadataURI
    )
        external
        payable
        nonReentrant
        whenNotPaused
        returns (address contractAddress, address liquidityTokenAddress)
    {
        // check if the deployment fee is paid
        if (msg.value < deploymentFee) revert InsufficientDeploymentFee();
        // check the validity of the constructor parameters
        _checkConstructorParams(
            tokenName,
            tokenSymbol,
            owner_,
            totalSupply,
            tradingFee,
            maxWalletPercent
        );

        address sender = _msgSender();

        // Clone the BIFKN314 implementation
        address clone = address(bifkn314Implementation).clone();

        (contractAddress, liquidityTokenAddress) = _deployBIFKN314(
            sender,
            tokenName,
            tokenSymbol,
            totalSupply,
            owner_,
            tradingFee,
            maxWalletPercent,
            metadataURI,
            clone
        );
    }

    function deployBIFKN314WithSalt(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply,
        address owner_,
        uint256 tradingFee,
        uint256 maxWalletPercent,
        string memory metadataURI,
        bytes32 salt
    )
        external
        payable
        nonReentrant
        whenNotPaused
        returns (address contractAddress, address liquidityTokenAddress)
    {
        // check if the deployment fee is paid
        if (msg.value < deploymentFee) revert InsufficientDeploymentFee();
        // check the validity of the constructor parameters
        _checkConstructorParams(
            tokenName,
            tokenSymbol,
            owner_,
            totalSupply,
            tradingFee,
            maxWalletPercent
        );

        address sender = _msgSender();

        // If the salt is not provided, generate a random one
        if (salt == bytes32(0)) {
            salt = keccak256(abi.encodePacked(sender, block.timestamp));
        }

        // Clone the BIFKN314 implementation
        address clone = address(bifkn314Implementation).cloneDeterministic(
            salt
        );

        (contractAddress, liquidityTokenAddress) = _deployBIFKN314(
            sender,
            tokenName,
            tokenSymbol,
            totalSupply,
            owner_,
            tradingFee,
            maxWalletPercent,
            metadataURI,
            clone
        );
    }

    /**
     * @dev Deploys a new BIFKN314 contract.
     * @param tokenName The name of the BIFKN314 contract.
     * @param tokenSymbol The symbol of the BIFKN314 contract.
     * @param owner_ The address of the owner of the BIFKN314 contract.
     * @param totalSupply The total supply of the BIFKN314 contract.
     * @param tradingFee The trading fee for the BIFKN314 contract.
     * @param maxWalletPercent The maximum wallet percentage for the BIFKN314 contract.
     * @param metadataURI The metadata URI for the BIFKN314 contract.
     */
    function deployBurst(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply,
        address owner_,
        uint256 tradingFee,
        uint256 maxWalletPercent,
        string memory metadataURI,
        bytes32 salt
    )
        external
        whenNotPaused
        onlyRole(BURST_DEPLOYER_ROLE)
        returns (address contractAddress, address liquidityTokenAddress)
    {
        // check the validity of the constructor parameters
        _checkConstructorParams(
            tokenName,
            tokenSymbol,
            owner_,
            totalSupply,
            tradingFee,
            maxWalletPercent
        );

        address sender = _msgSender();

        // If the salt is not provided, generate a random one
        if (salt == bytes32(0)) {
            salt = keccak256(abi.encodePacked(sender, block.timestamp));
        }

        // Clone the Burst implementation
        address clone = address(burstTokenImplementation).cloneDeterministic(
            salt
        );

        (contractAddress, liquidityTokenAddress) = _deployBIFKN314(
            sender,
            tokenName,
            tokenSymbol,
            totalSupply,
            owner_,
            tradingFee,
            maxWalletPercent,
            metadataURI,
            clone
        );
    }

    /**
     * @dev Returns the deterministic address of a clone contract based on the given salt.
     * @param salt The salt used to calculate the deterministic address.
     * @return clone The deterministic address of the clone contract.
     */
    function getDeterministicAddress(
        bytes32 salt,
        bool isBurst
    ) public view returns (address clone) {
        address implementation = isBurst
            ? address(burstTokenImplementation)
            : address(bifkn314Implementation);
        clone = address(implementation).predictDeterministicAddress(salt);
    }

    /**
     * @dev Calculates the deterministic address based on the given parameters.
     * @param occur The number of iterations to perform.
     * @param desiredPrefix The desired prefix address.
     * @param bytesDesired The number of bytes to compare in the address.
     * @param startSalt The starting salt value.
     * @return The calculated deterministic address.
     */
    function calculateDeterministicAddress(
        uint256 occur,
        address desiredPrefix,
        uint8 bytesDesired,
        bytes32 startSalt,
        bool isBurst
    ) public view returns (bytes32) {
        for (uint256 i = 0; i < occur; i++) {
            bytes32 newSalt = bytes32(uint256(startSalt) + i);
            address predictedAddress = getDeterministicAddress(
                newSalt,
                isBurst
            );

            if (bytesDesired == 2) {
                if (
                    bytes2(bytes20(predictedAddress)) ==
                    bytes2(bytes20(desiredPrefix))
                ) {
                    return newSalt;
                }
            } else if (bytesDesired == 3) {
                if (
                    bytes3(bytes20(predictedAddress)) ==
                    bytes3(bytes20(desiredPrefix))
                ) {
                    return newSalt;
                }
            } else if (bytesDesired == 4) {
                if (
                    bytes4(bytes20(predictedAddress)) ==
                    bytes4(bytes20(desiredPrefix))
                ) {
                    return newSalt;
                }
            } else if (bytesDesired == 5) {
                if (
                    bytes5(bytes20(predictedAddress)) ==
                    bytes5(bytes20(desiredPrefix))
                ) {
                    return newSalt;
                }
            }
        }

        return bytes32(0);
    }

    /**
     * @dev Returns the length of the `allTokens` array.
     * @return The length of the `allTokens` array as a uint256 value.
     */
    function allTokensLength() public view returns (uint256) {
        return allTokens.length;
    }

    /**
     * @dev Returns an array of all BIFKN314 Tokens.
     * @return An array of addresses representing all BIFKN314 Tokens.
     */
    function getAllTokens() public view returns (address[] memory) {
        return allTokens;
    }

    /**
     * @dev Retrieves the array of BIFKN314 contract addresses deployed by a specific deployer.
     * @param deployer The address of the deployer.
     * @return An array of BIFKN314 contract addresses deployed by the specified deployer.
     */
    function getTokensByDeployer(
        address deployer
    ) public view returns (address[] memory) {
        return tokenAddressesByDeployer[deployer];
    }

    /**
     * @dev Calculates fees for a swap on a specific token.
     * @param token The token address.
     * @param inputAmount The amount being swapped.
     * @return baseSwapRate The base swap rate for the token.
     * @return lpFee The fee allocated to liquidity providers.
     * @return protocolFee The fee allocated to the protocol.
     */
    function getFees(
        address token,
        uint256 inputAmount
    )
        external
        view
        returns (uint256 baseSwapRate, uint256 lpFee, uint256 protocolFee)
    {
        IBIFKN314FeeHook hook = tokenFeeHooks[token];
        if (address(hook) != address(0)) {
            (baseSwapRate, lpFee, protocolFee) = hook.calculateFees(
                inputAmount
            );
        } else {
            // Default fee calculation if no hook is set
            baseSwapRate = defaultBaseSwapRate;
            uint256 totalFee = (inputAmount * baseSwapRate) / SCALE_FACTOR;
            lpFee = (totalFee * defaultLpFeePortion) / SCALE_FACTOR;
            protocolFee = (totalFee * defaultProtocolFeePortion) / SCALE_FACTOR;
        }
    }

    /// @notice Retrieves the swap rate for a given token, using a fee hook if available.
    /// @dev If a fee hook is registered for the token, its `baseSwapRate()` is returned; otherwise, the default swap rate is used.
    /// @param token The address of the token for which to retrieve the swap rate.
    /// @return swapRate The applicable swap rate for the specified token.
    function getBaseSwapRate(
        address token
    ) external view returns (uint256 swapRate) {
        IBIFKN314FeeHook hook = tokenFeeHooks[token];
        if (address(hook) != address(0)) {
            swapRate = hook.baseSwapRate();
        } else {
            swapRate = defaultBaseSwapRate;
        }
    }

    /**
     * @notice Retrieves the fee hook details for a given token.
     * @dev This function fetches the fee hook contract associated with the specified token
     *      and returns its address along with fee-related parameters.
     * @param token The address of the token for which the fee hook details are being retrieved.
     * @return hookAddress The address of the fee hook contract.
     * @return baseSwapRate The base swap rate defined in the fee hook contract.
     * @return lpFeePortion The portion of the fee allocated to liquidity providers.
     * @return protocolFeePortion The portion of the fee allocated to the protocol.
     * @custom:throws FeeHookNotFound If no fee hook is associated with the specified token.
     */
    function getFeeHookDetails(
        address token
    )
        external
        view
        returns (
            address hookAddress,
            uint256 baseSwapRate,
            uint256 lpFeePortion,
            uint256 protocolFeePortion
        )
    {
        IBIFKN314FeeHook hook = tokenFeeHooks[token];
        if (address(hook) == address(0)) revert FeeHookNotFound();
        return (
            address(hook),
            hook.baseSwapRate(),
            hook.lpFeePortion(),
            hook.protocolFeePortion()
        );
    }

    /**
     * @dev Sets the address to which fees will be sent.
     * Can only be called by the feeToSetter.
     * @param feeTo_ The address to set as the feeTo address.
     */
    function setFeeTo(address feeTo_) external onlyRole(FEE_TO_SETTER_ROLE) {
        // Only check if address is not zero address
        if (feeTo_ != address(0)) {
            // Try to send 0 ETH to check if address can receive
            (bool success, ) = payable(feeTo_).call{value: 0}("");
            if (!success) revert("Address cannot receive ETH");
        }
        feeTo = feeTo_;
    }

    /**
     * @dev Sets the fee rate for the contract. This is the fee rate for swaps on each BIFKN314 contract.
     * @param feeRate_ The new fee rate to be set.
     * Requirements:
     * - `feeRate_` must be less than or equal to 30.
     * Modifiers:
     * - `onlyFeeToSetter`: Only the fee to setter can call this function.
     */
    function setFeeRate(
        uint256 feeRate_
    ) external onlyRole(FEE_TO_SETTER_ROLE) {
        if (feeRate_ > 30) revert InvalidFeeRate();

        feeRate = feeRate_;
    }

    /**
     * @dev Sets the threshold for fee distribution.
     * Can only be called by the feeToSetter.
     * This pertains to the fee threshold on the BIFKN314 contracts
     * @param feeDistributionThreshold_ The new threshold for fee distribution.
     */
    function setFeeDistributionThreshold(
        uint256 feeDistributionThreshold_
    ) external onlyRole(FEE_TO_SETTER_ROLE) {
        feeDistributionThreshold = feeDistributionThreshold_;
    }

    /**
     * @dev Sets the deployment fee for deploying a new BIFKN314 contract.
     * Can only be called by the feeToSetter.
     * @param deploymentFee_ The new deployment fee to be set based on the chain's native token.
     */
    function setDeploymentFee(
        uint256 deploymentFee_
    ) external onlyRole(FEE_TO_SETTER_ROLE) {
        deploymentFee = deploymentFee_;
    }

    // Add these functions with the other external functions

    /**
     * @dev Registers a fee hook implementation for a specific type.
     * @param hookType The type of fee hook.
     * @param implementation The address of the implementation contract.
     */
    function registerFeeHookImplementation(
        uint8 hookType,
        address implementation
    ) external onlyRole(MANAGER_ROLE) {
        if (implementation == address(0)) revert InvalidAddress();
        feeHookImplementations[hookType] = implementation;

        emit FeeHookImplementationRegistered(hookType, implementation);
    }

    /**
     * @dev Creates a fee hook for a specific token.
     * @param token The token address.
     * @param hookType The type of fee hook to create.
     * @param baseSwapRate_ The base swap rate for the hook.
     * @param lpFeePortion_ The LP fee portion.
     * @param protocolFeePortion_ The protocol fee portion.
     */
    function createFeeHook(
        address token,
        uint8 hookType,
        uint256 baseSwapRate_,
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external onlyRole(MANAGER_ROLE) {
        _createFeeHook(
            token,
            hookType,
            baseSwapRate_,
            lpFeePortion_,
            protocolFeePortion_
        );
    }

    /**
     * @dev Updates fee configuration for a token's hook.
     * @param token The token address.
     * @param baseSwapRate_ The new base swap rate.
     * @param lpFeePortion_ The new LP fee portion.
     * @param protocolFeePortion_ The new protocol fee portion.
     */
    function updateTokenFeeConfig(
        address token,
        uint256 baseSwapRate_,
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external onlyRole(MANAGER_ROLE) {
        if (baseSwapRate_ > MAX_BASE_SWAP_RATE) revert InvalidFeeRate();
        if (lpFeePortion_ + protocolFeePortion_ != SCALE_FACTOR)
            revert InvalidFeePortions();
        IBIFKN314FeeHook hook = tokenFeeHooks[token];
        if (address(hook) == address(0)) revert FeeHookNotFound();

        hook.updateFeeConfig(baseSwapRate_, lpFeePortion_, protocolFeePortion_);

        emit FeeHookUpdated(
            token,
            baseSwapRate_,
            lpFeePortion_,
            protocolFeePortion_
        );
    }

    /**
     * @notice Updates the base swap rate for a specific token's fee hook.
     * @dev Only callable by accounts with the MANAGER_ROLE.
     *     The new base swap rate must not exceed the maximum allowed value.
     *      Reverts if the fee hook for the given token is not found.
     * @param token The address of the token whose base swap rate is to be updated.
     * @param baseSwapRate_ The new base swap rate to set for the token.
     * @custom:throws InvalidFeeRate If the provided base swap rate exceeds the maximum allowed value.
     * @custom:throws FeeHookNotFound If the fee hook for the given token is not found.
     * Emits a {FeeHookUpdated} event upon successful update.
     */
    function updateBaseSwapRate(
        address token,
        uint256 baseSwapRate_
    ) external onlyRole(MANAGER_ROLE) {
        if (baseSwapRate_ > MAX_BASE_SWAP_RATE) revert InvalidFeeRate();
        IBIFKN314FeeHook hook = tokenFeeHooks[token];
        if (address(hook) == address(0)) revert FeeHookNotFound();

        hook.updateBaseSwapRate(baseSwapRate_);

        emit FeeHookUpdated(
            token,
            baseSwapRate_,
            hook.lpFeePortion(),
            hook.protocolFeePortion()
        );
    }

    /**
     * @notice Updates the fee portions for a specific token's fee hook.
     * @dev Only callable by accounts with the MANAGER_ROLE.
     *      The sum of `lpFeePortion_` and `protocolFeePortion_` must equal `SCALE_FACTOR`.
     *      Reverts if the fee hook for the given token is not found.
     * @param token The address of the token whose fee portions are being updated.
     * @param lpFeePortion_ The new portion of the fee allocated to liquidity providers.
     * @param protocolFeePortion_ The new portion of the fee allocated to the protocol.
     * @custom:throws InvalidFeePortions If the sum of `lpFeePortion_` and `protocolFeePortion_` is not equal to `SCALE_FACTOR`.
     * @custom:throws FeeHookNotFound If the fee hook for the given token is not found.
     * Emits a {FeeHookUpdated} event upon successful update.
     *
     * Requirements:
     * - Caller must have the MANAGER_ROLE.
     * - The sum of `lpFeePortion_` and `protocolFeePortion_` must be equal to `SCALE_FACTOR`.
     * - The fee hook for the specified token must exist.
     */
    function updateFeePortions(
        address token,
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external onlyRole(MANAGER_ROLE) {
        if (lpFeePortion_ + protocolFeePortion_ != SCALE_FACTOR)
            revert InvalidFeePortions();
        IBIFKN314FeeHook hook = tokenFeeHooks[token];
        if (address(hook) == address(0)) revert FeeHookNotFound();

        hook.updateFeePortions(lpFeePortion_, protocolFeePortion_);

        emit FeeHookUpdated(
            token,
            hook.baseSwapRate(),
            lpFeePortion_,
            protocolFeePortion_
        );
    }

    function emergencyResetFeeHook(
        address token
    ) external onlyRole(MANAGER_ROLE) {
        delete tokenFeeHooks[token];
        emit EmergencyFeeHookReset(token);
    }

    /**
     * @dev Sets the default fee portions.
     * @param lpFeePortion_ The default LP fee portion.
     * @param protocolFeePortion_ The default protocol fee portion.
     */
    function setDefaultFeePortions(
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) external onlyRole(MANAGER_ROLE) {
        if (lpFeePortion_ + protocolFeePortion_ != SCALE_FACTOR)
            revert InvalidFeePortions();
        defaultLpFeePortion = lpFeePortion_;
        defaultProtocolFeePortion = protocolFeePortion_;
    }

    /**
     * @dev Sets the default base swap rate.
     * @param baseSwapRate_ The default base swap rate.
     */
    function setDefaultBaseSwapRate(
        uint256 baseSwapRate_
    ) external onlyRole(MANAGER_ROLE) {
        if (baseSwapRate_ > MAX_BASE_SWAP_RATE) revert InvalidFeeRate(); // 5%
        defaultBaseSwapRate = baseSwapRate_;
    }

    /**
     * @dev Adds a new BIFKN314 token to the factory.
     * @param bifkn314 The BIFKN314 token contract instance to be added.
     * @notice Only the contract owner can call this function.
     */
    function addBIFKN314(IERC314 bifkn314) external onlyRole(MANAGER_ROLE) {
        address bifkn314Address = address(bifkn314);
        if (bifkn314Address == address(0)) revert InvalidAddress();

        tokenInfoByTokenAddress[bifkn314Address] = TokenInfo({
            name: bifkn314.name(),
            symbol: bifkn314.symbol(),
            totalSupply: bifkn314.totalSupply(),
            tokenAddress: bifkn314Address,
            lpAddress: address(bifkn314.liquidityToken()),
            deployer: bifkn314.owner()
        });

        tokenAddressesByDeployer[bifkn314.owner()].push(bifkn314Address);
        allTokens.push(bifkn314Address);

        emit TokenCreated(
            bifkn314.owner(),
            bifkn314.name(),
            bifkn314.symbol(),
            bifkn314Address,
            address(bifkn314.liquidityToken()),
            allTokens.length
        );
    }

    /**
     * @dev Removes a BIFKN314 token from the factory.
     * @param bifkn314Address The address of the BIFKN314 token to be removed.
     * @notice Only the owner of the contract can call this function.
     * @notice The token must exist in the `tokenInfoByTokenAddress` mapping.
     * @notice This function removes the token from the `tokenAddressesByDeployer` mapping,
     * the `allTokens` array, and the `tokenInfoByTokenAddress` mapping.
     * @notice Emits a `TokenRemoved` event with the details of the removed token.
     */
    function removeBIFKN314(
        address bifkn314Address
    ) external onlyRole(MANAGER_ROLE) {
        TokenInfo memory tokenInfo = tokenInfoByTokenAddress[bifkn314Address];
        if (tokenInfo.tokenAddress == address(0)) revert InvalidAddress();

        // remove the token from the tokenAddressesByDeployer mapping
        address[] storage tokens = tokenAddressesByDeployer[tokenInfo.deployer];
        for (uint256 i = 0; i < tokens.length; i++) {
            if (tokens[i] == bifkn314Address) {
                // swap the token with the last token in the array
                tokens[i] = tokens[tokens.length - 1];
                tokens.pop();
                break;
            }
        }

        // remove the token from the allTokens array
        for (uint256 i = 0; i < allTokens.length; i++) {
            if (allTokens[i] == bifkn314Address) {
                // swap the token with the last token in the array
                allTokens[i] = allTokens[allTokens.length - 1];
                allTokens.pop();
                break;
            }
        }

        // remove the token from the tokenInfoByTokenAddress mapping
        delete tokenInfoByTokenAddress[bifkn314Address];
        address feeHook = address(tokenFeeHooks[bifkn314Address]);
        if (feeHook != address(0)) {
            // remove the fee hook from the tokenFeeHooks mapping
            delete tokenFeeHooks[bifkn314Address];
            emit FeeHookRemoved(bifkn314Address, feeHook);
        }

        emit TokenRemoved(
            tokenInfo.deployer,
            tokenInfo.name,
            tokenInfo.symbol,
            bifkn314Address,
            tokenInfo.lpAddress,
            allTokens.length
        );
    }

    /**
     * @dev Updates the implementation contract address for the BIFKN314Factory contract.
     * Can only be called by the contract owner.
     * @param newImplementation The address of the new implementation contract.
     */
    function updateImplementation(
        BIFKN314 newImplementation
    ) external onlyRole(MANAGER_ROLE) {
        if (address(newImplementation) == address(0)) revert InvalidAddress();
        bifkn314Implementation = newImplementation;
    }

    /**
     * @notice Updates the implementation of the BurstToken contract.
     * @dev This function can only be called by an account with the MANAGER_ROLE.
     *      It reverts if the provided new implementation address is the zero address.
     * @param newImplementation The address of the new BurstToken implementation contract.
     */
    function updateBurstTokenImplementation(
        IBurstToken newImplementation
    ) external onlyRole(MANAGER_ROLE) {
        if (address(newImplementation) == address(0)) revert InvalidAddress();
        burstTokenImplementation = newImplementation;
    }

    /**
     * @dev Transfers the fees accumulated in the contract to the designated fee recipient.
     * @notice This function is internal and can only be called from within the contract.
     * @notice The fees are transferred as the balance of the contract to the `feeTo` address.
     * @notice If the transfer fails, a `WithdrawFailed` exception is thrown.
     */
    function _transferFee() internal {
        // if the deployment fee is 0, don't transfer
        // if the feeTo is not set, don't transfer
        if (deploymentFee == 0 || feeTo == address(0)) return;

        uint256 balance = address(this).balance;
        (bool success, ) = payable(feeTo).call{value: balance}("");
        if (!success) revert DistributionFailed();

        emit FeeDistributed(feeTo, balance);
    }

    /**
     * @dev Internal function to check the validity of constructor parameters.
     * @param tokenName The name of the token.
     * @param tokenSymbol The symbol of the token.
     * @param owner_ The address of the token owner.
     * @param totalSupply The total supply of the token.
     * @param tradingFee The trading fee for the token.
     * @param maxWalletPercent The maximum wallet percentage for the token.
     * @dev This function checks if the provided parameters meet the required conditions:
     * - The name and symbol must not be empty.
     * - The owner address must be a valid address (not zero address).
     * - The total supply must be greater than zero.
     * - The name must not exceed 50 characters.
     * - The symbol must not exceed 10 characters.
     * - The trading fee must be less than or equal to 500 (5%).
     * - The max wallet percent must be less than or equal to 10000 (100%).
     * @dev If any of the conditions are not met, the function reverts with the corresponding error message.
     */
    function _checkConstructorParams(
        string memory tokenName,
        string memory tokenSymbol,
        address owner_,
        uint256 totalSupply,
        uint256 tradingFee,
        uint256 maxWalletPercent
    ) internal pure {
        if (bytes(tokenName).length == 0) {
            revert NameMustNotBeEmpty();
        }
        if (bytes(tokenSymbol).length == 0) {
            revert SymbolMustNotBeEmpty();
        }
        if (owner_ == address(0)) {
            revert InvalidAddress();
        }
        if (totalSupply == 0) {
            revert SupplyMustBeGreaterThanZero();
        }
        if (bytes(tokenName).length > 50) {
            revert NameTooLong();
        }
        if (bytes(tokenSymbol).length > 10) {
            revert SymbolTooLong();
        }
        if (tradingFee > 500) {
            // 5%
            revert InvalidTradingFee();
        }
        if (maxWalletPercent > SCALE_FACTOR) {
            // 100%
            revert InvalidMaxWalletPercent();
        }
    }

    function _deployBIFKN314(
        address sender,
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply,
        address owner_,
        uint256 tradingFee,
        uint256 maxWalletPercent,
        string memory metadataURI,
        address clone
    )
        internal
        returns (address contractAddress, address liquidityTokenAddress)
    {
        BIFKN314 newToken = BIFKN314(payable(clone));
        newToken.initializeFactory(address(this));
        // Initialize the clone
        newToken.initialize(tokenName, tokenSymbol);
        newToken.setSupplyAndMint(
            totalSupply,
            owner_,
            tradingFee,
            maxWalletPercent,
            metadataURI
        );

        contractAddress = clone;
        liquidityTokenAddress = address(newToken.liquidityToken());

        // Create and initialize fee hook for the new token
        if (feeHookImplementations[0] != address(0)) {
            _createFeeHook(
                contractAddress,
                0,
                defaultBaseSwapRate,
                defaultLpFeePortion,
                defaultProtocolFeePortion
            );
        }

        // Store BIFKN314 details in the nested mapping
        TokenInfo memory newBifkn314TokenInfo = TokenInfo({
            name: tokenName,
            symbol: tokenSymbol,
            totalSupply: totalSupply,
            tokenAddress: contractAddress,
            lpAddress: liquidityTokenAddress,
            deployer: sender
        });

        tokenInfoByTokenAddress[contractAddress] = newBifkn314TokenInfo;
        tokenAddressesByDeployer[sender].push(contractAddress);

        // store the contract address
        allTokens.push(contractAddress);

        // transfer the deployment fee to the feeTo address
        _transferFee();

        emit TokenCreated(
            sender,
            tokenName,
            tokenSymbol,
            contractAddress,
            liquidityTokenAddress,
            allTokens.length
        );
    }

    /**
     * @dev Internal function to create a fee hook for a token.
     * @param token The token address.
     * @param hookType The type of fee hook to create.
     * @param baseSwapRate_ The base swap rate for the hook.
     * @param lpFeePortion_ The LP fee portion.
     * @param protocolFeePortion_ The protocol fee portion.
     * @return The created fee hook interface.
     */
    function _createFeeHook(
        address token,
        uint8 hookType,
        uint256 baseSwapRate_,
        uint256 lpFeePortion_,
        uint256 protocolFeePortion_
    ) internal returns (IBIFKN314FeeHook) {
        if (token == address(0)) revert InvalidAddress();
        if (baseSwapRate_ > MAX_BASE_SWAP_RATE) revert InvalidFeeRate(); // 5%
        if (lpFeePortion_ + protocolFeePortion_ != SCALE_FACTOR)
            revert InvalidFeePortions();

        address impl = feeHookImplementations[hookType];
        if (impl == address(0)) revert FeeHookImplementationNotFound();

        address hookClone = Clones.clone(impl);
        IBIFKN314FeeHook hook = IBIFKN314FeeHook(hookClone);
        hook.initialize(baseSwapRate_, lpFeePortion_, protocolFeePortion_);
        tokenFeeHooks[token] = hook;

        emit FeeHookCreated(token, hookType, hookClone);

        return hook;
    }

    /**
     * @dev Pauses the contract.
     * Can only be called by an account with the MANAGER_ROLE.
     */
    function pause() public onlyRole(MANAGER_ROLE) {
        _pause();
    }

    /**
     * @dev Unpauses the contract.
     * Can only be called by an account with the MANAGER_ROLE.
     */
    function unpause() public onlyRole(MANAGER_ROLE) {
        _unpause();
    }

    /**
     * @dev Required by UUPSUpgradeable to authorize upgrades.
     */
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADER_ROLE) {}
}
