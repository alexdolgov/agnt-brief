// SPDX-License-Identifier: MIT

pragma solidity >0.8.0 <0.9.0;

import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "./interfaces/IAutoplay.sol";
import "./interfaces/IPlatform.sol";
import "./interfaces/ILottery.sol";
import "./interfaces/token/IERC20Metadata.sol";
import "./libs/token/SafeERC20.sol";
import "./BaseWithAccessControlUpgradeable.sol";
import "./libs/utils/array/LArray.sol";
import "./libs/lottery/LLottery.sol";
import "./libs/platform/LPlatform.sol";

contract Autoplay is
    IAutoplay,
    PausableUpgradeable,
    BaseWithAccessControlUpgradeable
{
    uint8 public constant ORDERS_PER_PAY = 5;

    uint32 private _maxTicketsToBuy;
    uint32 private _upcomingRoundLimit;
    address private _platformAddress;
    mapping(address => mapping(uint32 => uint32)) private _roundOrdersCount; /// @dev lot => roundNum => orderId
    mapping(address => mapping(uint32 => uint32)) private _roundPaidPages; /// @dev lot => roundNum => paidPages
    mapping(address => mapping(uint32 => uint256)) private _roundTicketsCount; /// @dev lot => roundNum => ticketsCount
    mapping(address => mapping(uint32 => mapping(uint32 => uint256)))
        private _userOrderId; /// @dev lot => roundNum => orderId => userOrderId
    mapping(address => mapping(uint32 => mapping(uint32 => bool)))
        private _pagePaid; /// @dev lot => roundNum => startIndex => paid
    mapping(address => mapping(uint32 => LUtil.AutoplayOrder[]))
        private _roundOrders; /// @dev lottery => roundNumber => Order
    mapping(address => mapping(address => LUtil.AutoplayOrder[]))
        private _userOrders; /// @dev lottery => user => Orders
    mapping(address => mapping(address => uint256)) private _userOrdersCount; /// @dev lottery => user => count

    using SafeERC20 for IERC20Metadata;

    event Initialized(address indexed executor, uint256 at);
    event CreateOrder(
        address indexed executor,
        address indexed lotteryAddress,
        uint32 indexed roundNumber,
        uint32 orderId,
        uint8[][] numbersArray,
        uint256 amount
    );
    event ExecuteOrder(
        address indexed beneficiar,
        address indexed lotteryAddress,
        uint32 indexed roundNumber,
        uint32 orderId,
        uint8[][] numbersArray,
        uint256 amount
    );
    event WithdrawNative(address indexed withdrawAddress, uint256 amount);
    event TransferOnClose(
        address indexed to,
        address indexed tokenAddress,
        uint256 amount
    );

    modifier isLottery(address lotteryAddress) {
        require(
            _getPlatform().isGameExist(lotteryAddress),
            "Autoplay: Not lottery address"
        );
        _;
    }

    modifier isPlatformClosed() {
        require(
            _getPlatform().getStatus() == LUtil.PlatformStatus.CLOSED,
            "Autoplay: Platform not closed"
        );
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address platformAddress,
        uint32 maxTicketsToBuy,
        uint32 upcomingRoundLimit
    ) public initializer {
        __BaseWithAccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _grantRole(LPlatform.adminRole, _msgSender());
        _platformAddress = platformAddress;
        _maxTicketsToBuy = maxTicketsToBuy;
        _upcomingRoundLimit = upcomingRoundLimit;
        emit Initialized(_msgSender(), block.timestamp);
    }

    receive() external payable whenNotPaused {}

    function getMaxTicketsToBuy() external view override returns (uint32) {
        return _maxTicketsToBuy;
    }

    function getUpcomingRoundLimit() external view override returns (uint32) {
        return _upcomingRoundLimit;
    }

    function getPlatformAddress() external view override returns (address) {
        return _platformAddress;
    }

    function getCurrentRoundNumber(address lotteryAddress)
        public
        view
        override
        returns (uint32)
    {
        return uint32(_getLottery(lotteryAddress).getCurrentRoundNumber());
    }

    function getRoundOrdersCount(address lotteryAddress, uint32 roundNumber)
        external
        view
        override
        isLottery(lotteryAddress)
        returns (uint32)
    {
        return _roundOrdersCount[lotteryAddress][roundNumber];
    }

    function getRoundTicketsCount(address lotteryAddress, uint32 roundNumber)
        external
        view
        override
        isLottery(lotteryAddress)
        returns (uint256)
    {
        return _roundTicketsCount[lotteryAddress][roundNumber];
    }

    function getRoundOrders(
        address lotteryAddress,
        uint32 roundNumber,
        uint32 page,
        uint16 resultsPerPage
    ) external view override returns (LUtil.AutoplayOrder[] memory) {
        return
            _getOrders(
                lotteryAddress,
                roundNumber,
                address(0),
                page,
                resultsPerPage
            );
    }

    function getRoundOrder(
        address lotteryAddress,
        uint32 roundNumber,
        uint32 orderId
    )
        external
        view
        override
        isLottery(lotteryAddress)
        returns (LUtil.AutoplayOrder memory)
    {
        return _roundOrders[lotteryAddress][roundNumber][orderId];
    }

    function getUserOrdersCount(address lotteryAddress, address user)
        external
        view
        override
        isLottery(lotteryAddress)
        returns (uint256)
    {
        return _userOrdersCount[lotteryAddress][user];
    }

    function getUserOrders(
        address lotteryAddress,
        address user,
        uint32 page,
        uint16 resultsPerPage
    ) external view override returns (LUtil.AutoplayOrder[] memory _orders) {
        return _getOrders(lotteryAddress, 0, user, page, resultsPerPage);
    }

    function pause() external override onlyRole(LPlatform.adminRole) {
        _pause();
    }

    function unpause() external override onlyRole(LPlatform.adminRole) {
        _unpause();
    }

    function setMaxTicketsToBuy(uint32 maxTicketsToBuy)
        external
        override
        onlyRole(LPlatform.adminRole)
    {
        _maxTicketsToBuy = maxTicketsToBuy;
    }

    function setUpcomingRoundLimit(uint32 upcomingRoundLimit)
        external
        override
        onlyRole(LPlatform.adminRole)
    {
        _upcomingRoundLimit = upcomingRoundLimit;
    }

    function setPlatformAddress(address platformAddress)
        external
        override
        onlyRole(LPlatform.adminRole)
    {
        _platformAddress = platformAddress;
    }

    /**
     * @dev batch order to buy many tickets
     *
     * @param lotteryAddress address of lottery where we should buy tickets
     * @param numbersArray array of numbers chosen by user for all his tickets
     * @param amount total amount of tokens
     * @param roundNumber upcoming round number of lottery
     */
    function createOrder(
        address lotteryAddress,
        uint8[][] calldata numbersArray,
        uint256 amount,
        uint32 roundNumber
    ) external payable override whenNotPaused isLottery(lotteryAddress) {
        require(
            msg.value >= _estimateGasFee(numbersArray.length),
            "Autoplay: Invalid fee"
        );
        uint32 currentRoundNumber = getCurrentRoundNumber(lotteryAddress);
        require(
            roundNumber > currentRoundNumber &&
                roundNumber <= currentRoundNumber + _upcomingRoundLimit,
            "Autoplay: Invalid round number"
        );
        require(
            _maxTicketsToBuy >= numbersArray.length && numbersArray.length > 0,
            "Autoplay: Invalid tickets count in order"
        );
        _createOrder(lotteryAddress, numbersArray, amount, roundNumber);

        emit CreateOrder(
            _msgSender(),
            lotteryAddress,
            roundNumber,
            _roundOrdersCount[lotteryAddress][roundNumber] - 1,
            numbersArray,
            amount
        );
    }

    function executeOrdersByPage(address lotteryAddress, uint32 page)
        external
        override
        whenNotPaused
        isLottery(lotteryAddress)
        onlyRole(LPlatform.adminRole)
    {
        uint32 roundNumber = getCurrentRoundNumber(lotteryAddress);
        require(
            !isProcessed(lotteryAddress, roundNumber),
            "Autoplay: Orders processed"
        );
        (uint256 startIndex, uint256 stopIndex, ) = _getPositions(
            _roundOrdersCount[lotteryAddress][roundNumber],
            page,
            ORDERS_PER_PAY
        );
        require(
            !_pagePaid[lotteryAddress][roundNumber][uint32(startIndex) + 1],
            "Autoplay: Page processed"
        );
        _pagePaid[lotteryAddress][roundNumber][uint32(startIndex) + 1] = true;
        _roundPaidPages[lotteryAddress][roundNumber]++;
        for (uint256 orderId = startIndex; orderId <= stopIndex; orderId++) {
            _executeOrder(lotteryAddress, roundNumber, orderId);
        }
    }

    /**
     * @dev withrdaw native tokens from autoplay
     */
    function withdrawNative()
        external
        override
        whenPaused
        onlyRole(LPlatform.adminRole)
        isPlatformClosed
    {
        uint256 thisBalance = address(this).balance;
        address ownerAddress = _getPlatform().getPlatformOwnerAddress();
        payable(ownerAddress).transfer(thisBalance);

        emit WithdrawNative(ownerAddress, thisBalance);
    }

    function transferOnClose(address lotteryAddress)
        external
        override
        whenPaused
        onlyRole(LPlatform.adminRole)
        isPlatformClosed
        isLottery(lotteryAddress)
    {
        address platformOwner = _getPlatform().getPlatformOwnerAddress();
        uint256 balance = _getTokenBalanceOf(lotteryAddress, address(this));
        _getToken(lotteryAddress).safeTransfer(platformOwner, balance);
        emit TransferOnClose(
            platformOwner,
            address(_getToken(lotteryAddress)),
            balance
        );
    }

    function isProcessed(address lotteryAddress, uint32 roundNumber)
        public
        view
        override
        returns (bool)
    {
        if (_roundOrdersCount[lotteryAddress][roundNumber] == 0) return true;
        return
            _roundPaidPages[lotteryAddress][roundNumber] ==
            _getPagesByLimit(
                _roundOrdersCount[lotteryAddress][roundNumber],
                ORDERS_PER_PAY
            );
    }

    function _getPositions(
        uint256 size,
        uint256 page,
        uint16 resultsPerPage
    )
        private
        pure
        returns (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        )
    {
        (startIndex, stopIndex, elementsCount) = LArray.getPositions(
            size,
            page,
            resultsPerPage
        );
    }

    function _getPagesByLimit(uint256 size, uint16 resultsPerPage)
        private
        pure
        returns (uint256 pages)
    {
        pages = LArray.getPagesByLimit(size, resultsPerPage);
    }

    function _estimateGasFee(uint256 ticketsCount)
        private
        pure
        returns (uint256)
    {
        return 627005 + (184812 * ticketsCount) * 10**9; // 627005 - 8212748 gwei
    }

    function _getPlatform() private view returns (IPlatform platform) {
        platform = IPlatform(_platformAddress);
    }

    function _getLottery(address lotteryAddress)
        private
        view
        isLottery(lotteryAddress)
        returns (ILottery lottery)
    {
        lottery = ILottery(lotteryAddress);
    }

    function _getToken(address lotteryAddress)
        private
        view
        returns (IERC20Metadata token)
    {
        address tokenAddress = _getPlatform().getTokenAddress(lotteryAddress);
        require(tokenAddress != address(0), "Autoplay: Invalid token address");
        token = IERC20Metadata(tokenAddress);
    }

    function _getTokenBalanceOf(address lotteryAddress, address _address)
        private
        view
        returns (uint256 balance)
    {
        balance = _getToken(lotteryAddress).balanceOf(_address);
    }

    function _getOrders(
        address lotteryAddress,
        uint32 roundNumber,
        address user,
        uint32 page,
        uint16 resultsPerPage
    )
        private
        view
        isLottery(lotteryAddress)
        returns (LUtil.AutoplayOrder[] memory _orders)
    {
        uint256 size;
        if (roundNumber != 0)
            size = _roundOrders[lotteryAddress][roundNumber].length;
        else if (user != address(0))
            size = _userOrders[lotteryAddress][user].length;
        if (size == 0) return _orders;
        (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        ) = _getPositions(size, page, resultsPerPage);
        _orders = new LUtil.AutoplayOrder[](elementsCount);
        for (uint256 orderId = startIndex; orderId <= stopIndex; orderId++) {
            if (user != address(0)) {
                _orders[orderId] = _userOrders[lotteryAddress][user][orderId];
            } else {
                _orders[orderId] = _roundOrders[lotteryAddress][roundNumber][
                    orderId
                ];
            }
        }
        return _orders;
    }

    function _tokenTransfer(IERC20 token, uint256 amount) private {
        bool success = token.transferFrom(_msgSender(), address(this), amount);
        require(success, "TRANSFER_FAILED");
    }

    /**
     * @param numbersArray array of numbers chosen by user for all his tickets
     * @param amount ticket price * count
     */
    function _createOrder(
        address lotteryAddress,
        uint8[][] calldata numbersArray,
        uint256 amount,
        uint32 roundNumber
    ) private {
        require(
            amount ==
                _getLottery(lotteryAddress).getTicketPrice() *
                    numbersArray.length,
            "Autoplay: Invalid amount of ticket"
        );
        _validateTickets(numbersArray, lotteryAddress, roundNumber);
        uint32 orderId = _roundOrdersCount[lotteryAddress][roundNumber];
        _roundOrdersCount[lotteryAddress][roundNumber]++;
        LUtil.AutoplayOrder memory order = LUtil.AutoplayOrder(
            orderId,
            roundNumber,
            uint32(numbersArray.length),
            _msgSender(),
            numbersArray,
            false
        );

        _roundOrders[lotteryAddress][roundNumber].push(order);
        _userOrders[lotteryAddress][_msgSender()].push(order);
        _userOrderId[lotteryAddress][roundNumber][orderId]++;
        _userOrdersCount[lotteryAddress][_msgSender()]++;
        _tokenTransfer(_getToken(lotteryAddress), amount);
    }

    function _validateTickets(
        uint8[][] calldata numbersArray,
        address lotteryAddress,
        uint32 roundNumber
    ) private {
        for (uint256 index = 0; index < numbersArray.length; index++) {
            require(
                numbersArray[index].length == LLottery.getTicketLength(),
                "Autoplay: Invalid ticket length"
            );

            for (
                uint256 numIndex = 0;
                numIndex < LLottery.getTicketLength();
                numIndex++
            ) {
                require(
                    numbersArray[index][numIndex] >
                        LLottery.getMinNumber() - 1 &&
                        numbersArray[index][numIndex] <
                        LLottery.getMaxNumber() + 1,
                    "Autoplay: Invalid numbers range"
                );
                for (
                    uint256 idx = numIndex + 1;
                    idx < LLottery.getTicketLength();
                    idx++
                ) {
                    require(
                        numbersArray[index][numIndex] !=
                            numbersArray[index][idx],
                        "Autoplay: Dublicated number error"
                    );
                }
            }
            _roundTicketsCount[lotteryAddress][roundNumber]++;
        }
    }

    function _executeOrder(
        address lotteryAddress,
        uint32 roundNumber,
        uint256 orderId
    ) private {
        if (!_roundOrders[lotteryAddress][roundNumber][orderId].isExecuted) {
            uint256 amount = _getLottery(lotteryAddress).getTicketPrice() *
                _roundOrders[lotteryAddress][roundNumber][orderId].ticketsCount;
            address beneficiar = _roundOrders[lotteryAddress][roundNumber][
                orderId
            ].beneficiar;
            _roundOrders[lotteryAddress][roundNumber][orderId]
                .isExecuted = true;
            _userOrders[lotteryAddress][beneficiar][
                _userOrderId[lotteryAddress][roundNumber][uint32(orderId)]
            ].isExecuted = true;

            _getToken(lotteryAddress).approve(lotteryAddress, amount);
            _getLottery(lotteryAddress).buyTicketsWithBeneficiar(
                _roundOrders[lotteryAddress][roundNumber][orderId]
                    .ticketNumbers,
                amount,
                beneficiar
            );

            emit ExecuteOrder(
                beneficiar,
                lotteryAddress,
                roundNumber,
                uint32(orderId),
                _roundOrders[lotteryAddress][roundNumber][orderId]
                    .ticketNumbers,
                amount
            );
        }
    }
}
