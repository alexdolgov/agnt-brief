// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/proxy/Clones.sol";
import "./interfaces/IERC314.sol";
import "./interfaces/IBIFKN314FactoryV2.sol";
import "./interfaces/IBIFKN314WrapperFactory.sol";
import "./BIFKN314Wrapper.sol";

contract BIFKN314WrapperFactoryV2 is
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable
{
    using SafeERC20 for IERC20;
    using Clones for address;

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

    IBIFKN314FactoryV2 public bifknFactory;
    BIFKN314Wrapper public wrapperImplementation;

    /**
     * @dev Mapping that stores the token wrappers for each ERC20 token.
     * The keys of the mapping are instances of the IERC20 interface, and the values are the addresses of the token wrappers.
     */
    mapping(IERC20 => BIFKN314Wrapper) public erc20ToWrapper;

    /**
     * @dev Mapping that associates an ERC20 token with its corresponding BIFKN314Wrapper contract.
     * The key of the mapping is an ERC20 token (interface) and the value is the BIFKN314Wrapper contract.
     * This mapping allows for easy lookup of the BIFKN314Wrapper contract associated with a specific ERC20 token.
     */
    mapping(IERC20 => BIFKN314Wrapper) public bifkn314ToWrapper;

    /**
     * @dev A mapping that keeps track of addresses in a whitelist.
     * These tokens are allowed to be wrapped recursively.
     * The keys of the mapping are addresses, and the values are boolean values indicating whether the address is whitelisted or not.
     */
    mapping(IERC20 => bool) public whitelist;

    /**
     * @dev An array of BIFKN314Wrapper contracts.
     */
    BIFKN314Wrapper[] public allWrappers;

    /**
     * @dev A mapping that stores the curated list of wallet addresses and the corresponding IERC20 tokens that they can wrap.
     * The keys of the mapping are wallet addresses, and the values are IERC20 tokens.
     */
    mapping(address => IERC20) public curatedTokenList;

    /**
     * @dev A boolean variable indicating whether only curated tokens are allowed.
     * If `curatedTokensOnly` is set to `true`, only curated tokens are allowed.
     * If `curatedTokensOnly` is set to `false`, any token can be used.
     */
    bool public curatedTokensOnly;

    /**
     * @dev This private state variable reserves 50 slots for future state variables.
     */
    uint256[50] private __gap; // reserve 50 slots for future state variables

    event WrapperCreated(
        IERC20 indexed originalToken,
        IERC20 indexed wrappedToken,
        address wrapperContract
    );
    event EmergencyWithdraw(IERC20 token, uint256 amount, address to);
    event EmergencyWithdrawNative(address to, uint256 amount);
    event FactoryAddressChanged(address newFactoryAddress);
    event WrapperImplementationChanged(address newWrapperImplementation);
    event WrapperOwnershipTransferred(
        address indexed wrapperAddress,
        address indexed newOwner,
        address indexed previousOwner
    );

    error InvalidAddress();
    error InvalidFactoryAddress();
    error InvalidWrapperAddress();
    error WrapperAlreadyCreated();
    error NotCuratedToken();
    error PreviousFactoryNotSet();
    error InvalidRange();
    error OutOfBounds();

    /**
     * @dev Constructor function for the BIFKN314WrapperFactory contract.
     * @param _bifknFactory The address of the BIFKN314Factory contract.
     * @param _wrapperImplementation The address of the wrapper implementation contract.
     */
    function initialize(
        IBIFKN314FactoryV2 _bifknFactory,
        BIFKN314Wrapper _wrapperImplementation
    ) public initializer {
        __AccessControl_init();
        __ReentrancyGuard_init();
        __Pausable_init();
        __UUPSUpgradeable_init();

        if (address(_bifknFactory) == address(0)) {
            revert InvalidFactoryAddress();
        }
        if (address(_wrapperImplementation) == address(0)) {
            revert InvalidWrapperAddress();
        }

        curatedTokensOnly = true; // Start with curated tokens only
        bifknFactory = _bifknFactory;
        wrapperImplementation = _wrapperImplementation;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MANAGER_ROLE, msg.sender);
        _grantRole(UPGRADER_ROLE, msg.sender);

        _pause(); // Start paused to prevent any unwanted actions before initialization
        emit WrapperImplementationChanged(address(wrapperImplementation));
    }

    /**
     * @dev External function to initialize the factory with data from the previous factory in chunks.
     * @param start The starting index for the chunk.
     * @param end The ending index for the chunk.
     */
    function initializeFromPreviousFactory(
        IBIFKN314WrapperFactory previousFactory,
        uint256 start,
        uint256 end
    ) external onlyRole(MANAGER_ROLE) {
        if (address(previousFactory) == address(0))
            revert PreviousFactoryNotSet();
        if (end >= previousFactory.allWrappersLength()) revert OutOfBounds();
        if (end < start) revert InvalidRange();

        for (uint256 i = start; i <= end; i++) {
            BIFKN314Wrapper wrapperAddr = previousFactory.allWrappers(i);
            IERC20 originalToken = wrapperAddr.originalToken();
            IERC20 wrappedToken = wrapperAddr.wrappedToken();

            erc20ToWrapper[originalToken] = wrapperAddr;
            bifkn314ToWrapper[wrappedToken] = wrapperAddr;
            allWrappers.push(wrapperAddr);
        }
    }

    /**
     * @dev Creates a new BIFKN314 wrapper contract for the given original token.
     * @param originalToken The original ERC20 token to be wrapped.
     * @param tokenName The name of the new BIFKN314 token.
     * @param tokenSymbol The symbol of the new BIFKN314 token.
     * @param totalSupply The total supply of the new BIFKN314 token.
     * @param tradingFee The trading fee for the new BIFKN314 token.
     * @param owner_ The address of the owner of the factory.
     * @param maxWalletPercent The maximum wallet percentage for the new BIFKN314 token.
     * @param metadataURI The metadata URI for the new BIFKN314 token.
     * @return wrapperAddress The address of the newly created wrapper contract.
     * @return wrappedTokenAddress The address of the newly created BIFKN314 token.
     */
    function createWrapper(
        IERC20 originalToken,
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
        returns (address wrapperAddress, address wrappedTokenAddress)
    {
        /**
         * @dev This section of code checks if the `curatedTokensOnly` flag is enabled and performs the necessary validations.
         * If `curatedListOnly` is true, it checks if the caller is in the curated list and if the original token matches the expected token.
         * If any of the conditions fail, it reverts with the `NotCuratedList` error.
         *
         * Next, it checks if the original token is whitelisted. If not, it checks if a wrapper for the original token already exists or if the original token is already wrapped.
         * If any of these conditions are true, it reverts with the `WrapperAlreadyCreated` error.
         */
        if (curatedTokensOnly) {
            if (
                // Check if the caller is in the curated list
                curatedTokenList[_msgSender()] == IERC20(address(0)) ||
                // Check if the original token matches the expected token
                curatedTokenList[_msgSender()] != originalToken
            ) {
                revert NotCuratedToken();
            }
        }

        // Check if the original token is whitelisted
        if (!whitelist[originalToken]) {
            // Check if the original token is already wrapped
            // or if a wrapper for the original token already exists
            if (
                hasWrappedToken(originalToken) || isWrappedToken(originalToken)
            ) {
                revert WrapperAlreadyCreated();
            }
        }

        // Make sure this is set to false to prevent the creation of an infinite loop of wrapped tokens
        whitelist[originalToken] = false;
        delete curatedTokenList[_msgSender()]; // Remove the address from the curated list

        // Deploy the new BIFKN314 token
        // pass the value of the transaction to the bifkn314 token
        (address bifkn314Address, ) = bifknFactory.deployBIFKN314{
            value: msg.value
        }(
            tokenName,
            tokenSymbol,
            totalSupply,
            address(this),
            tradingFee,
            maxWalletPercent,
            metadataURI
        );

        // Clone the wrapper contract
        wrapperAddress = address(wrapperImplementation).clone();

        BIFKN314Wrapper newWrapper = BIFKN314Wrapper(wrapperAddress);

        // Set the wrapperFactory address in the wrapper contract
        newWrapper.setWrapperFactory(address(this), address(this));

        // Initialize the cloned wrapper contract
        newWrapper.setTokens(originalToken, IERC20(bifkn314Address));

        // Set the fee collector of the BIFKN314 token to the owner_
        IERC314(bifkn314Address).setFeeCollector(owner_);

        // Set the max wallet exempt for the wrapper in the BIFKN314 token
        IERC314(bifkn314Address).setMaxWalletExempt(wrapperAddress, true);

        // Transfer the bifkn314 tokens to the wrapper contract
        IERC20(bifkn314Address).safeTransfer(wrapperAddress, totalSupply);

        // Transfer the ownership of the BIFKN314 token to the owner_
        IERC314(bifkn314Address).transferOwnership(owner_);

        // Add the wrapper contract to the tokenWrappers mapping
        erc20ToWrapper[originalToken] = BIFKN314Wrapper(wrapperAddress);
        // Add the BIFKN314 token to the bifkn314ToWrapper mapping
        bifkn314ToWrapper[IERC20(bifkn314Address)] = BIFKN314Wrapper(
            wrapperAddress
        );
        // Add the wrapper contract to the allWrappers array
        allWrappers.push(newWrapper);

        emit WrapperCreated(
            originalToken,
            IERC20(bifkn314Address),
            wrapperAddress
        );

        return (wrapperAddress, bifkn314Address);
    }

    /**
     * @dev Sets the implementation address for the wrapper contract.
     * @param _wrapperImplementation The address of the wrapper implementation contract.
     * @notice Only the contract owner can call this function.
     */
    function setWrapperImplementation(
        BIFKN314Wrapper _wrapperImplementation
    ) external onlyRole(MANAGER_ROLE) {
        if (address(_wrapperImplementation) == address(0))
            revert InvalidWrapperAddress();
        wrapperImplementation = _wrapperImplementation;

        emit WrapperImplementationChanged(address(wrapperImplementation));
    }

    /**
     * @dev Sets the BIFKN factory contract address.
     * @param _bifknFactory The address of the BIFKN factory contract.
     * @notice Only the contract owner can call this function.
     * @notice If the provided factory address is zero, it will revert with an InvalidFactoryAddress error.
     */
    function setBIFKNFactory(
        IBIFKN314FactoryV2 _bifknFactory
    ) external onlyRole(MANAGER_ROLE) {
        if (address(_bifknFactory) == address(0)) {
            revert InvalidFactoryAddress();
        }
        bifknFactory = _bifknFactory;

        emit FactoryAddressChanged(address(bifknFactory));
    }

    /**
     * @dev Returns an array of all BIFKN314Wrapper instances.
     * @return An array of BIFKN314Wrapper instances.
     */
    function getAllWrappers() external view returns (BIFKN314Wrapper[] memory) {
        return allWrappers;
    }

    /**
     * @dev Returns the length of the allWrappers array.
     * @return The length of the allWrappers array.
     */
    function allWrappersLength() external view returns (uint256) {
        return allWrappers.length;
    }

    /**
     * @dev Checks if a token is a wrapped token.
     * This checks if the 314 token is a wrapped token.
     * If a bifkn314 token has a wrapper, it is considered a wrapped token.
     * @param token The token to check.
     * @return A boolean indicating whether the token is a wrapped token.
     */
    function isWrappedToken(IERC20 token) public view returns (bool) {
        return address(bifkn314ToWrapper[token]) != address(0);
    }

    /**
     * @dev Checks if a wrapper contract exists for the given ERC20 token.
     * @param token The ERC20 token to check for a wrapper contract.
     * @return A boolean indicating whether a wrapper contract exists for the token.
     */
    function hasWrappedToken(IERC20 token) public view returns (bool) {
        return address(erc20ToWrapper[token]) != address(0);
    }

    /**
     * @dev Sets the whitelist status for a given address.
     * @param _token The token to set the whitelist status for.
     * @param _value The whitelist status to set.
     * Only the contract owner can call this function.
     */
    function setWhitelist(
        IERC20 _token,
        bool _value
    ) external onlyRole(MANAGER_ROLE) {
        whitelist[_token] = _value;
    }

    /**
     * @dev Sets the flag to allow only curated lists.
     * @param _value The boolean value to set the flag.
     * Requirements:
     * - Only the contract owner can call this function.
     */
    function setCuratedListOnly(bool _value) external onlyRole(MANAGER_ROLE) {
        curatedTokensOnly = _value;
    }

    /**
     * @dev Adds a curated token to the contract.
     * @param _walletAddress The address of the EOA that will be allowed to wrap the token.
     * @param _token The IERC20 token interface.
     * Requirements:
     * - Only the contract owner can call this function.
     */
    function addCuratedToken(
        address _walletAddress,
        IERC20 _token
    ) external onlyRole(MANAGER_ROLE) {
        if (_walletAddress == address(0) || address(_token) == address(0)) {
            revert InvalidAddress();
        }
        curatedTokenList[_walletAddress] = _token;
    }

    /**
     * @dev Adds a BIFKN314Wrapper contract to the factory.
     * @param _wrapper The BIFKN314Wrapper contract to be added.
     * @notice Only the contract owner can call this function.
     * @notice The BIFKN314Wrapper contract address must not be zero.
     */
    function addWrapper(
        BIFKN314Wrapper _wrapper
    ) external onlyRole(MANAGER_ROLE) {
        if (address(_wrapper) == address(0)) {
            revert InvalidWrapperAddress();
        }

        erc20ToWrapper[_wrapper.originalToken()] = _wrapper;
        bifkn314ToWrapper[_wrapper.wrappedToken()] = _wrapper;
        allWrappers.push(_wrapper);

        emit WrapperCreated(
            _wrapper.originalToken(),
            _wrapper.wrappedToken(),
            address(_wrapper)
        );
    }

    /**
     * @notice Removes a wrapper contract from the factory.
     * @dev This function can only be called by the owner of the contract.
     *      It ensures the wrapper address is valid and removes the wrapper
     *      from the mappings and the `allWrappers` array.
     * @param _wrapper The address of the wrapper contract to be removed.
     * @custom:reverts InvalidWrapperAddress if the provided wrapper address is zero.
     */
    function removeWrapper(
        BIFKN314Wrapper _wrapper
    ) external onlyRole(MANAGER_ROLE) {
        if (address(_wrapper) == address(0)) {
            revert InvalidWrapperAddress();
        }

        // Remove the wrapper from the mappings and array
        delete erc20ToWrapper[_wrapper.originalToken()];
        delete bifkn314ToWrapper[_wrapper.wrappedToken()];

        for (uint256 i = 0; i < allWrappers.length; i++) {
            if (allWrappers[i] == _wrapper) {
                allWrappers[i] = allWrappers[allWrappers.length - 1];
                allWrappers.pop();
                break;
            }
        }
    }

    /**
     * @notice Transfers the ownership of a specified wrapper contract to a new owner.
     * @dev Only callable by accounts with the `MANAGER_ROLE`.
     *      Emits a `WrapperOwnershipTransferred` event upon successful transfer.
     * @param _wrapper The address of the wrapper contract whose ownership is being transferred.
     * @param newOwner The address of the new owner to whom the wrapper's ownership will be transferred.
     * @custom:requirements
     * - `_wrapper` must not be the zero address.
     * - `newOwner` must not be the zero address.
     * @custom:emits Emits `WrapperOwnershipTransferred` with:
     * - The address of the wrapper contract.
     * - The address of the new owner.
     * - The address of the caller.
     * @custom:reverts
     * - `InvalidWrapperAddress` if `_wrapper` is the zero address.
     * - `InvalidAddress` if `newOwner` is the zero address.
     */
    function transferOwnershipOfWrapper(
        BIFKN314Wrapper _wrapper,
        address newOwner
    ) external onlyRole(MANAGER_ROLE) {
        if (address(_wrapper) == address(0)) {
            revert InvalidWrapperAddress();
        }

        _wrapper.transferOwnership(newOwner);
        emit WrapperOwnershipTransferred(
            address(_wrapper),
            newOwner,
            _msgSender()
        );
    }

    /**
     * @notice Allows the manager to renounce ownership of a specified wrapper contract.
     * @dev This function can only be called by an account with the `MANAGER_ROLE`.
     *      Emits a `WrapperOwnershipTransferred` event upon successful execution.
     * @param _wrapper The address of the wrapper contract whose ownership is to be renounced.
     * @custom:requirements The `_wrapper` address must not be the zero address.
     * @custom:emits Emits a `WrapperOwnershipTransferred` event with the wrapper address,
     *               the new owner address (zero address), and the caller's address.
     * @custom:throws Reverts with `InvalidWrapperAddress` if `_wrapper` is the zero address.
     */
    function renounceOwnershipOfWrapper(
        BIFKN314Wrapper _wrapper
    ) external onlyRole(MANAGER_ROLE) {
        if (address(_wrapper) == address(0)) {
            revert InvalidWrapperAddress();
        }

        _wrapper.renounceOwnership();
        emit WrapperOwnershipTransferred(
            address(_wrapper),
            address(0),
            _msgSender()
        );
    }

    /**
     * @dev Pauses the contract.
     *
     * Requirements:
     * - The caller must be the owner of the contract.
     */
    function pause() external onlyRole(MANAGER_ROLE) {
        _pause();
    }

    /**
     * @dev Unpauses the contract, allowing certain functions to be called again.
     * Can only be called by the contract owner.
     */
    function unpause() external onlyRole(MANAGER_ROLE) {
        _unpause();
    }

    /**
     * @dev Allows the contract owner to withdraw a specified amount of tokens to a specified address.
     * @param token The ERC20 token to withdraw from.
     * @param amount The amount of tokens to withdraw.
     * @param to The address to which the tokens will be transferred.
     * @notice Only the contract owner can call this function.
     * @notice Tokens can only be withdrawn if they are not the original token or the wrapped token.
     */
    function emergencyWithdraw(
        IERC20 token,
        uint256 amount,
        address to
    ) external onlyRole(MANAGER_ROLE) {
        token.safeTransfer(to, amount);

        emit EmergencyWithdraw(token, amount, to);
    }

    /**
     * @dev Allows the contract owner to withdraw native tokens to a specified address in case of an emergency.
     * @param to The address to which the native tokens will be transferred.
     * @param amount The amount of native tokens to be transferred.
     */
    function emergencyWithdrawNative(
        address to,
        uint256 amount
    ) external onlyRole(MANAGER_ROLE) {
        payable(to).transfer(amount);

        emit EmergencyWithdrawNative(to, amount);
    }

    /**
     * @dev Required by UUPSUpgradeable to authorize upgrades.
     */
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADER_ROLE) {}
}
