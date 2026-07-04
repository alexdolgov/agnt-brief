//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "./interfaces/IRound.sol";
import "./interfaces/ILottery.sol";
import "./interfaces/IPlatform.sol";
import "./libs/utils/LUtil.sol";
import "./libs/lottery/LLottery.sol";
import "./libs/lottery/round/LRound.sol";
import "./libs/lottery/pool/LPrizePool.sol";
import "./libs/platform/LPlatform.sol";
import "./libs/token/SafeERC20.sol";
import "./utils/structs/EnumerableSet.sol";
import "./security/Pausable.sol";
import "./access/Ownable.sol";
import "./interfaces/access/IAccessControlUpgradeable.sol";
import "./VRFV2WrapperConsumerBase.sol";

contract Round is IRound, VRFV2WrapperConsumerBase, Pausable, Ownable {
    uint16 private constant _REQUEST_CONFIRMATIONS = 3;
    uint32 private constant _WORDS_NUMBER = 1;

    uint256 private _randomResult;
    uint256 private _roundPoolAmount;

    EnumerableSet.UintSet private _winningNumbers;

    LUtil.RoundStatus private _status;
    LUtil.PrizeWallet[] private _balances;
    LRound.TicketStorage private _ticketStorage;

    mapping(address => bool) private _withdrawedUser;

    using LRound for LUtil.PrizeWallet[];
    using LRound for LRound.TicketStorage;
    using LRound for LUtil.RoundStatus;
    using EnumerableSet for EnumerableSet.UintSet;
    using LRound for EnumerableSet.UintSet;
    using SafeERC20 for IERC20;

    event CalculateWinningTickets(
        address indexed roundAddress,
        uint256 page,
        uint256 indexed ticketKey,
        address indexed ticketOwner,
        uint8[] ticket
    );
    event PayWinners(
        address indexed roundAddress,
        uint256 page,
        uint256 ticketKey,
        LUtil.WinnerCategory indexed category,
        address indexed ticketOwner,
        uint256 winningAmount,
        uint256 ticketsCount
    );
    event ChangeRoundStatus(
        address indexed roundAddress,
        LUtil.RoundStatus indexed status
    );
    event Withdraw(
        address indexed roundAddress,
        address indexed to,
        uint256 amount
    );

    modifier onlyRole(bytes32 role) {
        require(
            IAccessControlUpgradeable(address(_getPlatform())).hasRole(
                role,
                _msgSender()
            ),
            "ROUND: permissions denied for msg.sender"
        );
        _;
    }

    receive() external payable {}

    constructor(address linkTokenAddress, address vrfV2Wrapper)
        VRFV2WrapperConsumerBase(
            linkTokenAddress, // LINK Token
            vrfV2Wrapper // VRF Coordinator
        )
    {}

    function _getEventEmitterAddress()
        private
        view
        returns (address eventEmitterAddress)
    {
        eventEmitterAddress = _getPlatform().getEventEmitterAddress();
    }

    function _getLottery() private view returns (ILottery lottery) {
        lottery = ILottery(owner());
    }

    function _getPlatform() private view returns (IPlatform platform) {
        platform = IPlatform(_getLottery().getPlatformAddress());
    }

    function _getToken() private view returns (IERC20 token) {
        token = IERC20(_getPlatform().getTokenAddress(owner()));
    }

    function _getRoundPoolAmount()
        private
        view
        returns (uint256 roundPoolAmount)
    {
        roundPoolAmount =
            _getLottery().getTicketPrice() *
            _ticketStorage.getTicketsCount();
    }

    function _emitChangeStatusEvent() private {
        _ticketStorage.emitChangeStatusEvent(
            owner(),
            address(this),
            _getEventEmitterAddress(),
            _status
        );
    }

    function _lotteryApprovePay(LUtil.Wallets wallet, uint256 amount) private {
        _getLottery().approvePay(wallet, amount / 0x186A0);
    }

    function _statusIfOpened() private view {
        _status.isOpen();
    }

    function _statusIfFunded() private view {
        _status.ifFunded();
    }

    function getTicketsCount() public view returns (uint256) {
        return _ticketStorage.getTicketsCount();
    }

    function getUserTicketsCount() external view returns (uint256) {
        return _ticketStorage.getUserTicketsCount(_msgSender());
    }

    function getUserTickets(uint256 page, uint16 resultsPerPage)
        external
        view
        returns (LUtil.TicketObject[] memory)
    {
        return
            _ticketStorage.getPaginatedUserTickets(
                _msgSender(),
                page,
                resultsPerPage
            );
    }

    function getCategoryTicketsCount(LUtil.WinnerCategory category)
        public
        view
        returns (uint256)
    {
        return _ticketStorage.getCategoryTicketsCount(category);
    }

    function getProcessingLimit() public pure returns (uint256) {
        return LRound.getTicketsPerProcessing();
    }

    function getPayLimit() public pure returns (uint256) {
        return LRound.getTicketsPerPay();
    }

    function getStatus() public view override returns (LUtil.RoundStatus) {
        return _status;
    }

    function getCategoryAmount(LUtil.WinnerCategory category)
        public
        view
        returns (uint256)
    {
        _statusIfFunded();
        return _balances[uint8(category)].amount;
    }

    function getCategoryAmountPerTicket(LUtil.WinnerCategory category)
        public
        view
        returns (uint256)
    {
        _statusIfFunded();
        return
            _balances.calculateTicketAmount(
                category,
                _ticketStorage._ticketsPool[uint8(category) + 1].length
            );
    }

    function getRoundPoolAmount() external view override returns (uint256) {
        return _roundPoolAmount;
    }

    function getWinners(
        LUtil.WinnerCategory category,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (LUtil.TicketObject[] memory) {
        return
            _ticketStorage.getPaginatedWinners(category, page, resultsPerPage);
    }

    function getTickets(uint256 page, uint16 resultsPerPage)
        external
        view
        returns (LUtil.TicketObject[] memory)
    {
        return _ticketStorage.getPaginatedTickets(page, resultsPerPage);
    }

    function getRevenueAmount() external view returns (uint256) {
        return
            (_roundPoolAmount * LPrizePool.getRevenuePurposePercent()) /
            0x186A0;
    }

    function getWinningNumbers() external view returns (uint256[] memory) {
        _status.ifHasWinningNumbers();
        return _winningNumbers.values();
    }

    function getPrizePoolBalances()
        external
        view
        returns (LUtil.PrizeWallet[] memory)
    {
        _statusIfFunded();
        return _balances;
    }

    function isUserWithdrawed(address user) public view returns (bool) {
        return _withdrawedUser[user];
    }

    function getRandomResult() public view returns (uint256) {
        return _randomResult;
    }

    function withdraw() external {
        _status.isRefund();
        uint256 userTickets = _ticketStorage.getUserTicketsCount(_msgSender());
        require(!isUserWithdrawed(_msgSender()), "ROUND: already withdrawed");
        require(userTickets > 0, "ROUND: empty tickets");

        _withdrawedUser[_msgSender()] = true;
        uint256 withdrawableAmount = (_roundPoolAmount * userTickets) /
            _ticketStorage.getTicketsCount();

        _getToken().safeTransferFrom(
            _getLottery().getWalletAddress(LUtil.Wallets.BOOSTER_WALLET),
            _msgSender(),
            withdrawableAmount
        );

        _ticketStorage.emitWithdrawEvent(
            owner(),
            address(this),
            _getEventEmitterAddress(),
            _msgSender(),
            withdrawableAmount
        );
    }

    function setTicket(uint8[] calldata ticket, address ticketOwner)
        external
        override
        onlyOwner
    {
        _statusIfOpened();

        _ticketStorage.setTicket(
            ticket,
            ticketOwner,
            address(this),
            _getEventEmitterAddress()
        );
    }

    function startProcessing() external payable override onlyOwner {
        _statusIfOpened();
        _status = LUtil.RoundStatus.GENERATING;

        _roundPoolAmount = _getRoundPoolAmount();

        _getRandomNumber();
        // _setWinningNumbers();
        _emitChangeStatusEvent();
    }

    /**
     * @dev after calculating categories we approving amount of pools to pay
     */
    function calculateWinnersGroupsPage(uint256 page)
        external
        onlyRole(LPlatform.adminRole)
    {
        _status.isProcessing();

        bool isProcessed = _ticketStorage.calculateWinnersGroupsPage(
            page,
            _winningNumbers,
            address(this),
            _getEventEmitterAddress()
        );
        if (isProcessed) {
            _status = LUtil.RoundStatus.CALCULATED_WINNERS;
            _emitChangeStatusEvent();
        }
    }

    function fundBalance(LUtil.PrizeWallet[] calldata balances)
        external
        onlyOwner
    {
        _status.isCalculatedWinners();

        for (uint256 index = 0; index < balances.length; index++) {
            _balances.push(balances[index]);
        }
        _ticketStorage.approveWinnersPay(_balances, owner());
        _status = LUtil.RoundStatus.FUNDED;

        _emitChangeStatusEvent();
    }

    function payPage(LUtil.WinnerCategory category, uint256 page)
        external
        override
        onlyRole(LPlatform.adminRole)
    {
        _status.isFundedOrPaying();

        _status = LUtil.RoundStatus.PAYING;
        _ticketStorage.payPage(
            _balances,
            category,
            page,
            owner(),
            address(this),
            _getEventEmitterAddress()
        );

        if (_ticketStorage.isPayedPages()) {
            _status = LUtil.RoundStatus.PAYED;
            _resetPay();
            _emitChangeStatusEvent();
        }
    }

    function closeRound() external onlyRole(LPlatform.adminRole) {
        _status.isPayed();

        _status = LUtil.RoundStatus.CLOSED;

        _emitChangeStatusEvent();
    }

    function suspend() external override onlyOwner {
        _pause();

        uint256 jackpotWalletAmount = _getRoundPoolAmount() *
            LPrizePool.getJackpotPercent();
        if (
            _getToken().balanceOf(
                _getLottery().getWalletAddress(LUtil.Wallets.JACKPOT_WALLET)
            ) < _getLottery().getJackpotRequireMin()
        ) {
            jackpotWalletAmount +=
                _getRoundPoolAmount() *
                (LPrizePool.getBoosterPercent() / 0x2);
        }

        _lotteryApprovePay(LUtil.Wallets.JACKPOT_WALLET, jackpotWalletAmount);
        _lotteryApprovePay(
            LUtil.Wallets.CATEGORY2_WALLET,
            _getRoundPoolAmount() * LPrizePool.getCategoryTwoPercent()
        );
        _lotteryApprovePay(
            LUtil.Wallets.CATEGORY3_WALLET,
            _getRoundPoolAmount() * LPrizePool.getCategoryThreePercent()
        );
        _lotteryApprovePay(
            LUtil.Wallets.CATEGORY4_WALLET,
            _getRoundPoolAmount() * LPrizePool.getCategoryFourPercent()
        );
        _lotteryApprovePay(
            LUtil.Wallets.CATEGORY5_WALLET,
            _getRoundPoolAmount() * LPrizePool.getCategoryFivePercent()
        );
    }

    function resume() external override onlyOwner {
        _statusIfOpened();
        _unpause();
        _resetPay();
    }

    function refund()
        external
        override
        onlyRole(LPlatform.adminRole)
        whenPaused
    {
        _statusIfOpened();
        _status = LUtil.RoundStatus.REFUND;

        _roundPoolAmount = _getRoundPoolAmount();
        _getLottery().approvePay(
            LUtil.Wallets.BOOSTER_WALLET,
            _roundPoolAmount
        );
        _balances.transferToBooster(owner(), _roundPoolAmount);

        _emitChangeStatusEvent();
    }

    // function _setWinningNumbers() private {
    //     _winningNumbers.add(2);
    //     _winningNumbers.add(5);
    //     _winningNumbers.add(8);
    //     _winningNumbers.add(9);
    //     _winningNumbers.add(25);
    //     _winningNumbers.add(44);
    //     _status = LUtil.RoundStatus.PROCESSING;
    //     _emitChangeStatusEvent();
    // }

    function _resetPay() private {
        ILottery lottery = _getLottery();
        lottery.approvePay(LUtil.Wallets.JACKPOT_WALLET, 0);
        lottery.approvePay(LUtil.Wallets.CATEGORY2_WALLET, 0);
        lottery.approvePay(LUtil.Wallets.CATEGORY3_WALLET, 0);
        lottery.approvePay(LUtil.Wallets.CATEGORY4_WALLET, 0);
        lottery.approvePay(LUtil.Wallets.CATEGORY5_WALLET, 0);
    }

    /**
     * Callback function used by VRF Coordinator V2
     */
    function fulfillRandomWords(
        uint256 _requestId,
        uint256[] memory _randomWords
    ) internal override {
        _randomResult = _randomWords[_WORDS_NUMBER - 1];
        _winningNumbers.calculateRandomNumbers(
            _randomResult,
            address(this),
            _getEventEmitterAddress()
        );
        _status = LUtil.RoundStatus.PROCESSING;
        _emitChangeStatusEvent();
    }

    function _getRandomNumber() private returns (uint256 requestId) {
        requestId = requestRandomness(
            _getPlatform().getCallbackGasLimit(),
            _REQUEST_CONFIRMATIONS,
            _WORDS_NUMBER
        );
    }
}
