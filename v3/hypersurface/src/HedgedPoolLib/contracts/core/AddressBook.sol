/**
 * SPDX-License-Identifier: UNLICENSED
 */
pragma solidity 0.8.18;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IAddressBook} from "../interfaces/IAddressBook.sol";
import {IAddressBookGamma} from "../interfaces/IGamma.sol";

/**
 * @author Opyn Team
 * @title AddressBook Module
 */
contract AddressBook is IAddressBook, OwnableUpgradeable {
    mapping(bytes32 => address) private _addresses;
    /// @dev Address of OpynAddressBook to get state of their addressbook
    bytes32 private constant OPYN_ADDRESS_BOOK = keccak256("OPYN_ADDRESS_BOOK");
    /// @dev Address of LP_MANAGER
    bytes32 private constant LP_MANAGER = keccak256("LP_MANAGER");
    /// @dev Address of ORDER_UTIL
    bytes32 private constant ORDER_UTIL = keccak256("ORDER_UTIL");
    /// @dev Address of FEE_COLLECTOR
    bytes32 private constant FEE_COLLECTOR = keccak256("FEE_COLLECTOR");
    /// @dev Address of LENS
    bytes32 private constant LENS = keccak256("LENS");
    /// @dev Address of TRADE_EXECUTOR
    bytes32 private constant TRADE_EXECUTOR = keccak256("TRADE_EXECUTOR");

    /// 3rd party
    /// @dev Address of PERENNIAL_MULTI_INVOKER
    bytes32 private constant PERENNIAL_MULTI_INVOKER =
        keccak256("PERENNIAL_MULTI_INVOKER");
    /// @dev Address of PERENNIAL_LENS
    bytes32 private constant PERENNIAL_LENS = keccak256("PERENNIAL_LENS");

    /**
     *****************************************
     * Mutating Functions
     *****************************************
     */

    /// @notice Perform inherited contracts' initializations
    function __AddressBook_init() external initializer {
        __Ownable_init_unchained();
    }

    /** Opyn Implentation to call out to opyns contract to return values found on their addressbook
     **/
    /**
     * @notice return Otoken implementation address
     * @return Otoken implementation address
     */
    function getOtokenImpl() external view returns (address) {
        return IAddressBookGamma(getAddress(OPYN_ADDRESS_BOOK)).getOtokenImpl();
    }

    /**
     * @notice return oTokenFactory address
     * @return OtokenFactory address
     */
    function getOtokenFactory() external view returns (address) {
        return
            IAddressBookGamma(getAddress(OPYN_ADDRESS_BOOK)).getOtokenFactory();
    }

    /**
     * @notice return Whitelist address
     * @return Whitelist address
     */
    function getWhitelist() external view returns (address) {
        return IAddressBookGamma(getAddress(OPYN_ADDRESS_BOOK)).getWhitelist();
    }

    /**
     * @notice return Controller address
     * @return Controller address
     */
    function getController() external view returns (address) {
        return IAddressBookGamma(getAddress(OPYN_ADDRESS_BOOK)).getController();
    }

    /**
     * @notice return MarginPool address
     * @return MarginPool address
     */
    function getMarginPool() external view returns (address) {
        return IAddressBookGamma(getAddress(OPYN_ADDRESS_BOOK)).getMarginPool();
    }

    /**
     * @notice return MarginCalculator address
     * @return MarginCalculator address
     */
    function getMarginCalculator() external view returns (address) {
        return
            IAddressBookGamma(getAddress(OPYN_ADDRESS_BOOK))
                .getMarginCalculator();
    }

    /**
     * @notice return LiquidationManager address
     * @return LiquidationManager address
     */
    function getLiquidationManager() external view returns (address) {
        return
            IAddressBookGamma(getAddress(OPYN_ADDRESS_BOOK))
                .getLiquidationManager();
    }

    /**
     * @notice return Oracle address
     * @return Oracle address
     */
    function getOracle() external view returns (address) {
        return IAddressBookGamma(getAddress(OPYN_ADDRESS_BOOK)).getOracle();
    }

    function getAccessKey() external view returns (address) {
        return IAddressBookGamma(getAddress(OPYN_ADDRESS_BOOK)).getAccessKey();
    }

    /**
     *****************************************
     * Setters for Hypersurface implementation
     *****************************************
     */

    /**
     * @dev Sets an address for an id replacing the address saved in the addresses map
     * IMPORTANT Use this function carefully, as it will do a hard replacement
     * @param opynAddressBook The opynAddressBook to set
     */
    function setOpynAddressBook(address opynAddressBook) external onlyOwner {
        _addresses[OPYN_ADDRESS_BOOK] = opynAddressBook;
        emit OpynAddressBookUpdated(opynAddressBook);
    }

    /**
     * @dev Sets an address for an id replacing the address saved in the addresses map
     * IMPORTANT Use this function carefully, as it will do a hard replacement
     * @param lpManagerAddress LpManager address
     */
    function setLpManager(address lpManagerAddress) external onlyOwner {
        _addresses[LP_MANAGER] = lpManagerAddress;
        emit LpManagerUpdated(lpManagerAddress);
    }

    function setOrderUtil(address orderUtilAddress) external onlyOwner {
        _addresses[ORDER_UTIL] = orderUtilAddress;
        emit OrderUtilUpdated(orderUtilAddress);
    }

    function setFeeCollector(address feeCollectorAddress) external onlyOwner {
        _addresses[FEE_COLLECTOR] = feeCollectorAddress;
        emit FeeCollectorUpdated(feeCollectorAddress);
    }

    function setLens(address lensAddress) external onlyOwner {
        _addresses[LENS] = lensAddress;
        emit LensUpdated(lensAddress);
    }

    function setTradeExecutor(address tradeExecutorAddress) external onlyOwner {
        _addresses[TRADE_EXECUTOR] = tradeExecutorAddress;
        emit TradeExecutorUpdated(tradeExecutorAddress);
    }

    function setPerennialMultiInvoker(
        address multiInvokerAddress
    ) external onlyOwner {
        _addresses[PERENNIAL_MULTI_INVOKER] = multiInvokerAddress;
        emit PerennialMultiInvokerUpdated(multiInvokerAddress);
    }

    function setPerennialLens(address lensAddress) external onlyOwner {
        _addresses[PERENNIAL_LENS] = lensAddress;
        emit PerennialLensUpdated(lensAddress);
    }

    /**
     *****************************************
     * Getters for Hypersurface implementation
     *****************************************
     */

    function getOpynAddressBook() external view returns (address) {
        return getAddress(OPYN_ADDRESS_BOOK);
    }

    function getLpManager() external view override returns (address) {
        return getAddress(LP_MANAGER);
    }

    function getOrderUtil() external view returns (address) {
        return getAddress(ORDER_UTIL);
    }

    /// @notice Fee Collector address
    /// @return FeeCollector address
    function getFeeCollector() external view returns (address) {
        return getAddress(FEE_COLLECTOR);
    }

    /// @notice Hypersurface Lens address
    /// @return Lens address
    function getLens() external view returns (address) {
        return getAddress(LENS);
    }

    /// @notice TradeExecutor address
    /// @return TradeExecutor address
    function getTradeExecutor() external view returns (address) {
        return getAddress(TRADE_EXECUTOR);
    }

    /// @notice Perennial MultiInvoker address
    /// @return MultiInvoker address
    function getPerennialMultiInvoker() external view returns (address) {
        return getAddress(PERENNIAL_MULTI_INVOKER);
    }

    /// @notice Perennial Lens address
    /// @return PerennialLens address
    function getPerennialLens() external view returns (address) {
        return getAddress(PERENNIAL_LENS);
    }

    /**
     *****************************************
     * General Admin Functions for Address Book
     *****************************************
     */
    /**
     * @dev Sets an address for an id replacing the address saved in the addresses map
     * IMPORTANT Use this function carefully, as it will do a hard replacement
     * @param id The id
     * @param newAddress The address to set
     */
    function setAddress(
        bytes32 id,
        address newAddress
    ) external override onlyOwner {
        _addresses[id] = newAddress;
        emit AddressSet(id, newAddress, false);
    }

    /**
     * @dev Returns an address by id
     * @return The address
     */
    function getAddress(bytes32 id) public view override returns (address) {
        return _addresses[id];
    }
}
