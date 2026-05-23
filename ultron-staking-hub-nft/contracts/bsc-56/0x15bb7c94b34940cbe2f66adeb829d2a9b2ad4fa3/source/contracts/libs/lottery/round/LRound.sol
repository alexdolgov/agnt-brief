//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "../../../interfaces/token/IERC20.sol";
import "../../../interfaces/ILottery.sol";
import "../../../utils/structs/EnumerableSet.sol";
import "../../utils/LUtil.sol";
import "../../utils/array/LArray.sol";
import "../../lottery/LLottery.sol";
import "../../lottery/pool/LPrizePool.sol";
import "../../../Wallet.sol";
import "../../token/SafeERC20.sol";
import "../../../interfaces/IEventEmitter.sol";

library LRound {
    struct TicketStorage {
        mapping(uint256 => address) _ticketOwners;
        mapping(uint256 => uint8[]) _ticketNumbers;
        mapping(uint8 => uint256[]) _ticketsPool;
        mapping(uint256 => bool) _ticketProcessed;
        mapping(uint256 => bool) _ticketPayed;
        mapping(address => uint256[]) _ownerTickets;
        uint256 _ticketsCount;
        uint256 _processedPages;
    }

    using EnumerableSet for EnumerableSet.UintSet;
    using LRound for LUtil.PrizeWallet[];

    using SafeERC20 for IERC20;

    function getPoolLength() public pure returns (uint8) {
        return 0x6;
    }

    function getTicketsPerProcessing() public pure returns (uint16) {
        return 0x3E8;
    }

    function getTicketsPerPay() public pure returns (uint16) {
        return 0x3E8;
    }

    function isOpen(LUtil.RoundStatus status) public pure {
        require(status == LUtil.RoundStatus.OPEN, "ROUND: status not opened");
    }

    function isProcessing(LUtil.RoundStatus status) public pure {
        require(
            status == LUtil.RoundStatus.PROCESSING,
            "ROUND: status not in processing"
        );
    }

    function isPaying(LUtil.RoundStatus status) public pure {
        require(
            status == LUtil.RoundStatus.PAYING,
            "ROUND: status not in paying"
        );
    }

    function isPayed(LUtil.RoundStatus status) public pure {
        require(
            status == LUtil.RoundStatus.PAYED,
            "ROUND: status not in payed"
        );
    }

    function isRefund(LUtil.RoundStatus status) public pure {
        require(
            status == LUtil.RoundStatus.REFUND,
            "ROUND: status not in refund"
        );
    }

    function isCalculatedWinners(LUtil.RoundStatus status) public pure {
        require(
            status >= LUtil.RoundStatus.CALCULATED_WINNERS,
            "ROUND: status not in calculating winners"
        );
    }

    function isFundedOrPaying(LUtil.RoundStatus status) public pure {
        require(
            (status == LUtil.RoundStatus.FUNDED) ||
                (status == LUtil.RoundStatus.PAYING),
            "ROUND: status not in funded or paying"
        );
    }

    function ifHasWinningNumbers(LUtil.RoundStatus status) public pure {
        require(
            status >= LUtil.RoundStatus.PROCESSING,
            "ROUND: does not have winning numbers - round opened or refunded or generating"
        );
    }

    function ifFunded(LUtil.RoundStatus status) public pure {
        require(
            status >= LUtil.RoundStatus.FUNDED,
            "ROUND: not funded - round opened or refunded or generating or processing or calculated winners"
        );
    }

    function isClosed(LUtil.RoundStatus status) public pure {
        require(status == LUtil.RoundStatus.CLOSED, "ROUND: not payed");
    }

    function _getLottery(address lotteryAddress)
        private
        pure
        returns (ILottery lottery)
    {
        lottery = ILottery(lotteryAddress);
    }

    function _getPagesByLimit(uint256 size, uint16 resultsPerPage)
        private
        pure
        returns (uint256 pages)
    {
        pages = LArray.getPagesByLimit(size, resultsPerPage);
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

    function _getPlatform(address lotteryAddress)
        private
        view
        returns (IPlatform platform)
    {
        platform = IPlatform(_getLottery(lotteryAddress).getPlatformAddress());
    }

    function _getToken(address lotteryAddress)
        private
        view
        returns (IERC20 token)
    {
        token = IERC20(
            _getPlatform(lotteryAddress).getTokenAddress(lotteryAddress)
        );
    }

    function _getWalletAddress(address lotteryAddress, LUtil.Wallets wallet)
        private
        view
        returns (address walletAddress)
    {
        walletAddress = _getLottery(lotteryAddress).getWalletAddress(wallet);
    }

    function _roundExists(address lotteryAddress, address roundAddress)
        private
        view
    {
        (bool isExist, ) = _getLottery(lotteryAddress).isRoundExist(
            roundAddress
        );
        require(isExist, "round does not exist");
    }

    function _createTicketObject(
        TicketStorage storage tickets,
        uint256 index,
        bool isInitial,
        LUtil.WinnerCategory category,
        address ticketOwner
    ) private view returns (LUtil.TicketObject memory ticket) {
        uint256 ticketKey;
        if (isInitial) {
            ticketKey = index + 1;
        } else if (!isInitial && ticketOwner != address(0)) {
            ticketKey = tickets._ownerTickets[ticketOwner][index];
        } else {
            ticketKey = tickets._ticketsPool[uint8(category) + 1][index];
        }
        address owner = ticketOwner != address(0)
            ? ticketOwner
            : tickets._ticketOwners[ticketKey];

        ticket = LUtil.TicketObject(
            ticketKey,
            owner,
            tickets._ticketNumbers[ticketKey],
            true
        );
    }

    function _createTicketObjects(
        TicketStorage storage tickets,
        uint256 page,
        uint16 resultsPerPage,
        bool isInitial,
        LUtil.WinnerCategory category,
        address ticketOwner
    ) private view returns (LUtil.TicketObject[] memory _tickets) {
        uint256 size;
        if (isInitial && ticketOwner == address(0)) {
            size = tickets._ticketsCount;
        } else if (!isInitial && ticketOwner != address(0)) {
            size = tickets._ownerTickets[ticketOwner].length;
        } else {
            size = tickets._ticketsPool[uint8(category) + 1].length;
        }

        (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        ) = _getPositions(size, page, resultsPerPage);

        _tickets = new LUtil.TicketObject[](elementsCount);

        if (elementsCount == 0) return _tickets;

        uint256 index_ = 0;
        for (uint256 index = startIndex; index < stopIndex + 1; index++) {
            _tickets[index_] = _createTicketObject(
                tickets,
                index,
                isInitial,
                category,
                ticketOwner
            );
            index_++;
        }
    }

    function _isPayedCategory(
        TicketStorage storage tickets,
        LUtil.WinnerCategory category
    ) private view returns (bool) {
        uint8 _category = uint8(category) + 1;
        require(
            tickets._ticketsPool[_category].length > 0,
            "winners pool empty"
        );
        uint256 pages = _getPagesByLimit(
            tickets._ticketsPool[_category].length,
            getTicketsPerPay()
        );

        for (uint256 page = 1; page < pages + 1; page++) {
            if (
                !tickets._ticketPayed[
                    tickets._ticketsPool[_category][
                        getTicketsPerPay() * (page - 1)
                    ]
                ]
            ) return false;
        }
        return true;
    }

    function _isProcessed(TicketStorage storage tickets)
        private
        view
        returns (bool)
    {
        if (tickets._ticketsCount == 0) return true;
        return
            tickets._processedPages ==
            _getPagesByLimit(tickets._ticketsCount, getTicketsPerProcessing());
    }

    function _addAmount(
        TicketStorage storage tickets,
        LUtil.WinnerPay[] memory ticketsOwners,
        uint256 index,
        LUtil.WinnerCategory category,
        uint256 amount
    ) private view {
        bool isExist;
        uint256 i = 0;
        {
            while (i < ticketsOwners.length && ticketsOwners[i].isValid) {
                if (
                    ticketsOwners[i].recipient ==
                    tickets._ticketOwners[
                        tickets._ticketsPool[uint8(category) + 1][index]
                    ]
                ) {
                    ticketsOwners[i].ticketsCount++;
                    ticketsOwners[i].amount +=
                        amount /
                        tickets._ticketsPool[uint8(category) + 1].length;
                    isExist = true;
                }
                i++;
            }
        }

        if (!isExist) {
            ticketsOwners[i] = LUtil.WinnerPay(
                tickets._ticketOwners[
                    tickets._ticketsPool[uint8(category) + 1][index]
                ],
                amount / tickets._ticketsPool[uint8(category) + 1].length,
                1,
                true
            );
        }
    }

    function _generateWinners(
        TicketStorage storage tickets,
        LUtil.PrizeWallet storage wallet,
        LUtil.WinnerCategory category,
        uint256 page
    ) private returns (LUtil.WinnerPay[] memory) {
        (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        ) = _getPositions(
                tickets._ticketsPool[uint8(category) + 1].length,
                page,
                getTicketsPerPay()
            );
        LUtil.WinnerPay[] memory ticketsOwners = new LUtil.WinnerPay[](
            elementsCount
        );
        if (elementsCount == 0) {
            return ticketsOwners;
        }

        require(
            !tickets._ticketPayed[
                tickets._ticketsPool[uint8(category) + 1][startIndex]
            ],
            "page already payed"
        );
        tickets._ticketPayed[
            tickets._ticketsPool[uint8(category) + 1][startIndex]
        ] = true;

        for (uint256 index = startIndex; index < stopIndex + 1; index++) {
            _addAmount(tickets, ticketsOwners, index, category, wallet.amount);
        }

        return ticketsOwners;
    }

    function _safeTransferFrom(
        address lotteryAddress,
        address from,
        address to,
        uint256 amount
    ) private {
        _getToken(lotteryAddress).safeTransferFrom(from, to, amount);
    }

    function _safeTransferFromToBooster(
        address lotteryAddress,
        LUtil.Wallets wallet,
        uint256 poolAmount,
        uint256 percent
    ) private {
        _safeTransferFrom(
            lotteryAddress,
            _getWalletAddress(lotteryAddress, wallet),
            _getWalletAddress(lotteryAddress, LUtil.Wallets.BOOSTER_WALLET),
            (poolAmount * percent) / 0x186A0
        );
    }

    function _lotteryApprovePay(
        ILottery lottery,
        LUtil.Wallets wallet,
        uint256 amount
    ) private {
        lottery.approvePay(wallet, amount);
    }

    function _approveWinnersPay(
        TicketStorage storage tickets,
        LUtil.PrizeWallet[] storage wallets,
        ILottery lottery,
        LUtil.Wallets wallet,
        LUtil.WinnerCategory winnerCategory
    ) private {
        if (tickets._ticketsPool[uint8(winnerCategory) + 1].length > 0) {
            if (winnerCategory == LUtil.WinnerCategory.JACKPOT) {
                lottery.resetJackpot();
                if (
                    _getToken(address(lottery)).balanceOf(
                        wallets[uint256(wallet)].wallet
                    ) < wallets[uint256(wallet)].amount
                )
                    _lotteryApprovePay(
                        lottery,
                        LUtil.Wallets.BOOSTER_WALLET,
                        wallets[0].amount
                    );
            }
            _lotteryApprovePay(
                lottery,
                wallet,
                wallets[uint256(wallet)].amount
            );
        }
    }

    function _emitCalculateWinningTickets(
        TicketStorage storage tickets,
        address eventEmitterAddress,
        address roundAddress,
        uint256 page,
        uint256 ticketKey
    ) private {
        IEventEmitter(eventEmitterAddress).emitCalculateWinningTickets(
            roundAddress,
            page,
            ticketKey,
            tickets._ticketOwners[ticketKey],
            tickets._ticketNumbers[ticketKey]
        );
    }

    function isPayedPages(TicketStorage storage tickets)
        public
        view
        returns (bool)
    {
        LUtil.WinnerCategory[5] memory categories;
        categories = [
            LUtil.WinnerCategory.JACKPOT,
            LUtil.WinnerCategory.CATEGORY2,
            LUtil.WinnerCategory.CATEGORY3,
            LUtil.WinnerCategory.CATEGORY4,
            LUtil.WinnerCategory.CATEGORY5
        ];
        for (uint256 i = 0; i < categories.length; i++) {
            LUtil.WinnerCategory category = categories[i];
            if (
                getCategoryTicketsCount(tickets, category) != 0 &&
                !_isPayedCategory(tickets, category)
            ) {
                return false;
            }
        }
        return true;
    }

    function getUserTicketsCount(TicketStorage storage tickets, address owner)
        public
        view
        returns (uint256)
    {
        return tickets._ownerTickets[owner].length;
    }

    function getTicketsCount(TicketStorage storage tickets)
        public
        view
        returns (uint256)
    {
        return tickets._ticketsCount;
    }

    function getCategoryTicketsCount(
        TicketStorage storage tickets,
        LUtil.WinnerCategory category
    ) public view returns (uint256) {
        return tickets._ticketsPool[uint8(category) + 1].length;
    }

    function getPaginatedTickets(
        TicketStorage storage tickets,
        uint256 page,
        uint16 resultsPerPage
    ) public view returns (LUtil.TicketObject[] memory) {
        return
            _createTicketObjects(
                tickets,
                page,
                resultsPerPage,
                true,
                LUtil.WinnerCategory.CATEGORY5,
                address(0)
            );
    }

    function getPaginatedUserTickets(
        TicketStorage storage tickets,
        address owner,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (LUtil.TicketObject[] memory _tickets) {
        return
            _createTicketObjects(
                tickets,
                page,
                resultsPerPage,
                false,
                LUtil.WinnerCategory.CATEGORY5,
                owner
            );
    }

    function getPaginatedWinners(
        TicketStorage storage tickets,
        LUtil.WinnerCategory category,
        uint256 page,
        uint16 resultsPerPage
    ) public view returns (LUtil.TicketObject[] memory) {
        return
            _createTicketObjects(
                tickets,
                page,
                resultsPerPage,
                false,
                category,
                address(0)
            );
    }

    function getTicketsCountPerCategory(
        TicketStorage storage tickets,
        LUtil.WinnerCategory category
    ) public view returns (uint256) {
        return tickets._ticketsPool[uint8(category) + 1].length;
    }

    function calculateTicketAmount(
        LUtil.PrizeWallet[] storage balances,
        LUtil.WinnerCategory category,
        uint256 ticketCount
    ) public view returns (uint256) {
        if (ticketCount == 0) ticketCount++;
        return balances[uint8(category)].amount / ticketCount;
    }

    function checkPagePayed(
        TicketStorage storage tickets,
        LUtil.WinnerCategory category,
        uint256 page
    ) public view returns (bool) {
        (uint256 startIndex, , ) = _getPositions(
            tickets._ticketsPool[uint8(category) + 1].length,
            page,
            getTicketsPerPay()
        );
        return
            tickets._ticketPayed[
                tickets._ticketsPool[uint8(category) + 1][startIndex]
            ];
    }

    function emitChangeStatusEvent(
        TicketStorage storage tickets,
        address lotteryAddress,
        address roundAddress,
        address eventEmitterAddress,
        LUtil.RoundStatus status
    ) public {
        _roundExists(lotteryAddress, roundAddress);
        IEventEmitter(eventEmitterAddress).emitChangeRoundStatus(
            roundAddress,
            status
        );
    }

    function emitWithdrawEvent(
        TicketStorage storage tickets,
        address lotteryAddress,
        address roundAddress,
        address eventEmitterAddress,
        address to,
        uint256 amount
    ) public {
        _roundExists(lotteryAddress, roundAddress);
        IEventEmitter(eventEmitterAddress).emitWithdraw(
            roundAddress,
            to,
            amount
        );
    }

    function setTicket(
        TicketStorage storage tickets,
        uint8[] memory ticket,
        address owner,
        address roundAddress,
        address eventEmitterAddress
    ) public {
        tickets._ticketsCount++;

        for (uint256 index = 0; index < LLottery.getTicketLength(); index++) {
            tickets._ticketNumbers[tickets._ticketsCount].push(ticket[index]);
        }

        tickets._ticketOwners[tickets._ticketsCount] = owner;
        tickets._ownerTickets[owner].push(tickets._ticketsCount);
        IEventEmitter(eventEmitterAddress).emitSetTicket(
            roundAddress,
            owner,
            tickets._ticketsCount,
            tickets._ticketNumbers[tickets._ticketsCount]
        );
    }

    function calculateWinnersGroupsPage(
        TicketStorage storage tickets,
        uint256 page,
        EnumerableSet.UintSet storage numbers,
        address roundAddress,
        address eventEmitterAddress
    ) public returns (bool) {
        (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        ) = _getPositions(
                tickets._ticketsCount,
                page,
                getTicketsPerProcessing()
            );
        if (elementsCount == 0) {
            return _isProcessed(tickets);
        }

        require(
            !tickets._ticketProcessed[startIndex + 1],
            "page already processed"
        );
        tickets._ticketProcessed[startIndex + 1] = true;
        tickets._processedPages++;

        for (uint256 index = startIndex; index < stopIndex + 1; index++) {
            uint256 numIndex = 0;
            uint8 coincidenceCount = 0;
            uint256 ticketKey = index + 1;

            while (numIndex < LLottery.getTicketLength()) {
                if (
                    numbers.contains(
                        tickets._ticketNumbers[ticketKey][numIndex]
                    )
                ) {
                    coincidenceCount++;
                }
                numIndex++;
            }

            if (coincidenceCount > 1) {
                tickets
                    ._ticketsPool[
                        LLottery.getTicketLength() + 1 - coincidenceCount
                    ]
                    .push(ticketKey);
                _emitCalculateWinningTickets(
                    tickets,
                    eventEmitterAddress,
                    roundAddress,
                    page,
                    ticketKey
                );
            }
        }

        return _isProcessed(tickets);
    }

    function payPage(
        TicketStorage storage tickets,
        LUtil.PrizeWallet[] storage wallets,
        LUtil.WinnerCategory category,
        uint256 page,
        address lotteryAddress,
        address roundAddress,
        address eventEmitterAddress
    ) public {
        (, , uint256 elementsCount) = _getPositions(
            tickets._ticketsPool[uint8(category) + 1].length,
            page,
            getTicketsPerPay()
        );

        LUtil.WinnerPay[] memory ticketsOwners = _generateWinners(
            tickets,
            wallets[uint8(category)],
            category,
            page
        );
        uint256 index = 0;

        while (index < elementsCount && ticketsOwners[index].isValid) {
            if (
                _getToken(lotteryAddress).balanceOf(
                    wallets[uint8(category)].wallet
                ) < ticketsOwners[index].amount
            ) {
                _lotteryApprovePay(
                    _getLottery(lotteryAddress),
                    LUtil.Wallets.BOOSTER_WALLET,
                    ticketsOwners[index].amount
                );
                _safeTransferFrom(
                    lotteryAddress,
                    wallets[uint256(LUtil.Wallets.BOOSTER_WALLET)].wallet,
                    ticketsOwners[index].recipient,
                    ticketsOwners[index].amount
                );
            } else {
                _safeTransferFrom(
                    lotteryAddress,
                    wallets[uint8(category)].wallet,
                    ticketsOwners[index].recipient,
                    ticketsOwners[index].amount
                );
            }
            uint256 ticketKey = tickets._ticketsPool[uint8(category) + 1][
                index
            ];
            IEventEmitter(eventEmitterAddress).emitPayWinners(
                roundAddress,
                page,
                ticketKey,
                category,
                ticketsOwners[index].recipient,
                ticketsOwners[index].amount,
                ticketsOwners[index].ticketsCount
            );
            index++;
        }
    }

    function calculateRandomNumbers(
        EnumerableSet.UintSet storage set,
        uint256 salt,
        address roundAddress,
        address eventEmitterAddress
    ) public {
        uint256 randNonce;
        while (set.length() < LLottery.getTicketLength()) {
            uint256 randomNumber = (uint256(
                keccak256(abi.encodePacked(salt, randNonce))
            ) % LLottery.getMaxNumber()) + 1;
            set.add(randomNumber);
            randNonce++;
            IEventEmitter(eventEmitterAddress).emitCalculateRandomNumber(
                roundAddress,
                randomNumber
            );
        }
    }

    function transferToBooster(
        LUtil.PrizeWallet[] storage wallets,
        address lotteryAddress,
        uint256 roundAmount
    ) public {
        uint256 poolAmount = (roundAmount *
            LPrizePool.getCommonPrizePoolPercent()) / 0x186A0;

        uint256 jackpotPercent = LPrizePool.getJackpotPercent();
        if (
            _getToken(lotteryAddress).balanceOf(
                _getWalletAddress(lotteryAddress, LUtil.Wallets.JACKPOT_WALLET)
            ) < _getLottery(lotteryAddress).getJackpotRequireMin()
        ) {
            jackpotPercent += (LPrizePool.getBoosterPercent() / 0x2);
        }

        _safeTransferFromToBooster(
            lotteryAddress,
            LUtil.Wallets.JACKPOT_WALLET,
            poolAmount,
            jackpotPercent
        );
        _safeTransferFromToBooster(
            lotteryAddress,
            LUtil.Wallets.CATEGORY2_WALLET,
            poolAmount,
            LPrizePool.getCategoryTwoPercent()
        );
        _safeTransferFromToBooster(
            lotteryAddress,
            LUtil.Wallets.CATEGORY3_WALLET,
            poolAmount,
            LPrizePool.getCategoryThreePercent()
        );
        _safeTransferFromToBooster(
            lotteryAddress,
            LUtil.Wallets.CATEGORY4_WALLET,
            poolAmount,
            LPrizePool.getCategoryFourPercent()
        );
        _safeTransferFromToBooster(
            lotteryAddress,
            LUtil.Wallets.CATEGORY5_WALLET,
            poolAmount,
            LPrizePool.getCategoryFivePercent()
        );
    }

    function approveWinnersPay(
        TicketStorage storage tickets,
        LUtil.PrizeWallet[] storage wallets,
        address lotteryAddress
    ) public {
        _approveWinnersPay(
            tickets,
            wallets,
            _getLottery(lotteryAddress),
            LUtil.Wallets.JACKPOT_WALLET,
            LUtil.WinnerCategory.JACKPOT
        );
        _approveWinnersPay(
            tickets,
            wallets,
            _getLottery(lotteryAddress),
            LUtil.Wallets.CATEGORY2_WALLET,
            LUtil.WinnerCategory.CATEGORY2
        );
        _approveWinnersPay(
            tickets,
            wallets,
            _getLottery(lotteryAddress),
            LUtil.Wallets.CATEGORY3_WALLET,
            LUtil.WinnerCategory.CATEGORY3
        );
        _approveWinnersPay(
            tickets,
            wallets,
            _getLottery(lotteryAddress),
            LUtil.Wallets.CATEGORY4_WALLET,
            LUtil.WinnerCategory.CATEGORY4
        );
        _approveWinnersPay(
            tickets,
            wallets,
            _getLottery(lotteryAddress),
            LUtil.Wallets.CATEGORY5_WALLET,
            LUtil.WinnerCategory.CATEGORY5
        );
    }
}
