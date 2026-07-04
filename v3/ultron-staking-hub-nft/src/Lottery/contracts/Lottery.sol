//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "./interfaces/IWallet.sol";
import "./interfaces/IPrizePool.sol";
import "./interfaces/IGame.sol";
import "./interfaces/ILottery.sol";
import "./interfaces/IReferral.sol";
import "./interfaces/IPlatform.sol";
import "./interfaces/token/IERC20Metadata.sol";
import "./interfaces/token/IERC20Bonus.sol";
import "./interfaces/token/LinkTokenInterface.sol";
import "./interfaces/IRoundDeployer.sol";
import "./libs/utils/LUtil.sol";
import "./libs/utils/array/LArray.sol";
import "./libs/lottery/pool/LPrizePool.sol";
import "./libs/platform/LPlatform.sol";
import "./libs/lottery/LLottery.sol";
import "./libs/token/SafeERC20.sol";
import "./utils/Context.sol";
import "./utils/structs/EnumerableSetUpgradeable.sol";
import "./Wallet.sol";
import "./PlatformAdminUpgradeable.sol";
import "./Round.sol";
import "./utils/StringsUpgradeable.sol";

contract PrizePoolUpgradeable is IPrizePool, PlatformAdminUpgradeable {
    mapping(address => string) internal _walletsNames;
    EnumerableSetUpgradeable.AddressSet internal _wallets;
    uint256 internal _jackpotRequireMinimum;
    mapping(uint256 => LUtil.PrizeWallet[]) internal _roundWalletBalances;
    mapping(uint256 => LUtil.PrizeWallet[]) internal _roundFundedWalletBalances;

    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;
    using LPrizePool for EnumerableSetUpgradeable.AddressSet;
    using SafeERC20 for IERC20Metadata;

    event AddWallet(address indexed walletAddress, string walletName);
    event ResetJackpotMinimumAmount(uint256 indexed amount);
    event Distribute(uint256 indexed amount, uint256 at);
    event TransferOnClose(address indexed to, uint256 amount);

    function __PrizePool_init(address platformAddress)
        internal
        onlyInitializing
    {
        __PlatformAdmin_init(platformAddress);
    }

    function _getPlatform() internal view returns (IPlatform platform) {
        platform = IPlatform(getPlatformAddress());
    }

    function _getReferral() internal view returns (IReferral referral) {
        referral = IReferral(_getPlatform().getReferralSystemAddress());
    }

    function _getEventEmitter()
        internal
        view
        returns (IEventEmitter eventEmitter)
    {
        eventEmitter = IEventEmitter(_getPlatform().getEventEmitterAddress());
    }

    function _getRoundDeployer()
        internal
        view
        returns (IRoundDeployer roundDeployer)
    {
        roundDeployer = IRoundDeployer(
            _getPlatform().getRoundDeployerAddress()
        );
    }

    function _getToken() internal view returns (IERC20Metadata token) {
        address tokenAddress = _getPlatform().getTokenAddress(address(this));
        require(tokenAddress != address(0), "PRIZEPOOL: Invalid token address");
        token = IERC20Metadata(tokenAddress);
    }

    function _getBonusToken() internal view returns (IERC20Bonus bonusToken) {
        bonusToken = IERC20Bonus(
            _getPlatform().getBonusTokenAddress(address(this))
        );
    }

    function _getLink() internal view returns (LinkTokenInterface link) {
        link = LinkTokenInterface(_getPlatform().getLinkTokenAddress());
    }

    function _getTokenDecimals() internal view returns (uint8 decimals) {
        decimals = _getToken().decimals();
    }

    function _getTokenBalanceOf(address _address)
        internal
        view
        returns (uint256 balance)
    {
        balance = _getToken().balanceOf(_address);
    }

    function _getGameConfig()
        internal
        view
        returns (
            bool isBonusAvailable,
            bool isBurnAvailable,
            bool isBuybackAvailable,
            bool isRevenueAvailable
        )
    {
        (
            isBonusAvailable,
            isBurnAvailable,
            isBuybackAvailable,
            isRevenueAvailable
        ) = _getPlatform().getGameConfig(address(this));
    }

    function getWalletAddress(LUtil.Wallets walletIndex)
        external
        view
        override
        returns (address)
    {
        return _wallets.at(uint256(walletIndex));
    }

    function getJackpotRequireMin() external view override returns (uint256) {
        return _jackpotRequireMinimum;
    }

    function addWallet(address walletAddress, string memory walletName)
        external
        onlyRole(LPlatform.ownerRole)
        nonZeroAddress(walletAddress)
    {
        require(!_wallets.contains(walletAddress), "already exists");
        _wallets.add(walletAddress);
        _walletsNames[_wallets.at(_wallets.length() - 1)] = walletName;

        emit AddWallet(walletAddress, walletName);
    }

    function _resetJackpotMinimumAmount() internal {
        _jackpotRequireMinimum =
            LPrizePool.getJackpotMinimumAmount() *
            10**_getTokenDecimals();

        emit ResetJackpotMinimumAmount(_jackpotRequireMinimum);
    }

    /**
     * @dev distribute tokens to categories
     */
    function _distribute(uint256 amount) internal {
        require(amount > 0, "PRIZEPOOL: Amount must be more than 0");
        _jackpotRequireMinimum = _wallets.distribute(
            getPlatformAddress(),
            address(this),
            _msgSender(),
            amount,
            _jackpotRequireMinimum
        );

        emit Distribute(amount, block.timestamp);
    }

    /**
     * dev approve amount for round
     */
    function approve(
        LUtil.Wallets wallet,
        address roundAddress,
        uint256 amount
    ) internal {
        _wallets.approve(wallet, roundAddress, amount);
    }

    function _transferOnClose() internal {
        _jackpotRequireMinimum = 0;
        address platformOwner = _getPlatform().getPlatformOwnerAddress();
        _getLink().transfer(platformOwner, _getLink().balanceOf(address(this)));

        _getToken().safeTransfer(
            platformOwner,
            _getTokenBalanceOf(address(this))
        );

        for (uint256 index = 0; index < LPrizePool.getPoolsCount(); index++) {
            IWallet wallet = IWallet(_wallets.at(index));
            uint256 walletBalance = wallet.balance();
            wallet.transferTo(platformOwner, walletBalance);
            emit TransferOnClose(platformOwner, walletBalance);
        }
    }
}

contract GameUpgradeable is IGame, PrizePoolUpgradeable {
    LUtil.GameStatus private _status;
    EnumerableSetUpgradeable.AddressSet private _rounds;

    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;
    using LArray for EnumerableSetUpgradeable.AddressSet;

    event CreateNewRound(
        uint256 ticketPrice,
        address roundsAddress,
        uint256 at
    );

    modifier onlyRound() {
        require(
            _rounds.contains(_msgSender()),
            "GAME: msg.sender is not linked round"
        );
        _;
    }

    modifier isGameNotClosed() {
        require(_status != LUtil.GameStatus.CLOSED, "GAME: game is closed");
        _;
    }

    modifier isGameClosed() {
        require(_status == LUtil.GameStatus.CLOSED, "GAME: must be closed");
        _;
    }

    function __Game_init(address platformAddress) internal onlyInitializing {
        __PrizePool_init(platformAddress);
    }

    function _isRoundGenerating(IRound round) internal view {
        require(
            round.getStatus() == LUtil.RoundStatus.GENERATING,
            "GAME: round not generating"
        );
    }

    function _getRoundsLength() internal view returns (uint256 length) {
        length = _rounds.length();
    }

    function _getRoundAddressByIndex(uint256 index)
        internal
        view
        returns (address roundAddress)
    {
        roundAddress = _rounds.at(index);
    }

    function _getRoundByIndex(uint256 index)
        internal
        view
        returns (IRound round)
    {
        round = IRound(_getRoundAddressByIndex(index));
    }

    function _roundIsOpen(IRound round) internal view returns (bool isOpen) {
        isOpen = round.getStatus() == LUtil.RoundStatus.OPEN;
    }

    function _roundIsClosed(IRound round)
        internal
        view
        returns (bool isClosed)
    {
        isClosed = round.getStatus() == LUtil.RoundStatus.CLOSED;
    }

    function _roundIsRefund(IRound round)
        internal
        view
        returns (bool isRefund)
    {
        isRefund = round.getStatus() == LUtil.RoundStatus.REFUND;
    }

    function _createPrizeWallets(uint256 roundIndex, bool isInitial)
        internal
        view
        returns (LUtil.PrizeWallet[] memory wallets)
    {
        uint8 poolsCount = LPrizePool.getPoolsCount();
        wallets = new LUtil.PrizeWallet[](poolsCount);
        for (uint8 index = 0; index < poolsCount; index++) {
            address wallet = _wallets.at(index);
            uint256 amount;
            if (isInitial) {
                amount = _getTokenBalanceOf(wallet);
                if (index == 0 && amount < _jackpotRequireMinimum)
                    amount = _jackpotRequireMinimum;
            } else {
                amount = _roundWalletBalances[roundIndex][index].amount;
                if(index != 6 && _getRoundByIndex(roundIndex).getCategoryTicketsCount(LUtil.WinnerCategory(index)) != 0
                    && amount > _roundFundedWalletBalances[roundIndex - 2][index].amount) {
                    amount -= _roundFundedWalletBalances[roundIndex - 2][index].amount;
                } 
            }
            wallets[index] = LUtil.PrizeWallet(
                _walletsNames[wallet],
                wallet,
                amount
            );
        }
    }

    function walletBalances() public view returns (LUtil.PrizeWallet[] memory) {
        return _createPrizeWallets(0, true);
    }

    function getCurrentRoundNumber() external view override returns (uint256) {
        require(_getRoundsLength() > 0, "GAME: round not generating");
        return _getRoundsLength();
    }

    function getCurrentRoundAddress() external view override returns (address) {
        require(_getRoundsLength() > 0, "GAME: round not generating");
        return _getRoundAddressByIndex(_getRoundsLength() - 1);
    }

    function getStatus() external view override returns (LUtil.GameStatus) {
        return _status;
    }

    function getRounds(
        uint256 page,
        uint16 resultsPerPage,
        bool isReversed
    ) external view override returns (address[] memory rounds) {
        rounds = !isReversed
            ? _rounds.getPaginatedArray(page, resultsPerPage)
            : _rounds.getPaginatedArrayReversed(page, resultsPerPage);
    }

    function getRoundsFromIndex(
        uint256 index,
        uint16 resultsPerPage,
        bool isReversed
    ) external view override returns (address[] memory rounds) {
        rounds = !isReversed
            ? _rounds.getPaginatedArrayFromIndex(index, resultsPerPage)
            : _rounds.getPaginatedArrayFromIndexReversed(index, resultsPerPage);
    }

    function isRoundExist(address roundAddress)
        external
        view
        override
        nonZeroAddress(roundAddress)
        returns (bool, uint256)
    {
        return
            _rounds.contains(roundAddress)
                ? (true, _rounds.getIndex(roundAddress) - 1)
                : (false, 0);
    }

    /**
     * @dev on starting new round we deploy it and start processing for previous
     */
    function _createNewRound(uint256 ticketPrice) internal whenNotPaused {
        IReferral referral = _getReferral();
        (, , , bool isRevenueAvailable) = _getGameConfig();
        if (_getRoundsLength() > 0) {
            if (_getRoundsLength() > 1) {
                IRound prevRound = _getRoundByIndex(_getRoundsLength() - 2);
                require(
                    prevRound.getStatus() >= LUtil.RoundStatus.PROCESSING ||
                        _roundIsRefund(prevRound),
                    "GAME: prev round is open"
                );
            }
            IRound round = _getRoundByIndex(_getRoundsLength() - 1);
            if (_roundIsOpen(round)) {
                _getLink().transfer(
                    address(round),
                    _getPlatform().getLinkFee()
                );
                round.startProcessing{value: msg.value}();

                if (isRevenueAvailable) {
                    referral.startProcessing(address(round));
                }
            } else {
                if (isRevenueAvailable) {
                    referral.setRefunded(address(round));
                }
            }
        } else _resetJackpotMinimumAmount();
        address newRoundAddress = _getRoundDeployer().deploy();
        _rounds.add(newRoundAddress);
        _saveWalletBalances(
            _getRoundsLength() - 1,
            walletBalances(),
            _roundWalletBalances
        );
        _getEventEmitter().grantEventCallerRole(newRoundAddress);
        emit CreateNewRound(ticketPrice, newRoundAddress, block.timestamp);
    }

    function fundRoundByIndex(uint256 index)
        external
        whenNotPaused
        onlyRole(LPlatform.adminRole)
    {
        address prevRoundAddress = _getRoundsLength() > 2
            ? _getRoundAddressByIndex(index - 1)
            : address(0);
        LUtil.PrizeWallet[] memory balances = _getRoundsLength() > 2
            ? _calculateBalances(index + 1)
            : _roundWalletBalances[1];
        if (prevRoundAddress != address(0)) {
            IRound prevRound = IRound(prevRoundAddress);
            require(
                prevRound.getStatus() >= LUtil.RoundStatus.PAYED ||
                    _roundIsRefund(prevRound),
                "GAME: round has not yet been paid or refunded"
            );
        }
        if(index == 1) {
            _roundFundedWalletBalances[index][0] = balances[0];
            _roundFundedWalletBalances[index][1] = balances[1];
            _roundFundedWalletBalances[index][2] = balances[2];
            _roundFundedWalletBalances[index][3] = balances[3];
            _roundFundedWalletBalances[index][4] = balances[4];
            _roundFundedWalletBalances[index][5] = balances[5]; 
        } else {
            _saveWalletBalances(index, balances, _roundFundedWalletBalances);
        }
        _getRoundByIndex(index).fundBalance(balances);
    }

    function getRoundWalletBalances(uint256 index) external view returns(LUtil.PrizeWallet[] memory) {
        return _roundWalletBalances[index];
    }

    function getRoundFundedWalletBalances(uint256 index) external view returns (LUtil.PrizeWallet[] memory) {
        return _roundFundedWalletBalances[index];
    }

    function approvePay(LUtil.Wallets wallet, uint256 amount)
        external
        override
        onlyRound
    {
        approve(wallet, _msgSender(), amount);
    }

    function resetJackpot() external override onlyRound {
        _resetJackpotMinimumAmount();
    }

    function _updateUserPoints(address user, uint256 points) internal {
        _getReferral().updateUserPoints(
            _getRoundAddressByIndex(_getRoundsLength() - 1),
            user,
            points
        );
    }

    function suspend() external onlyRole(LPlatform.adminRole) {
        _pause();
        _getRoundByIndex(_getRoundsLength() - 1).suspend();
    }

    function resume() external onlyRole(LPlatform.adminRole) isGameNotClosed {
        _unpause();
        IRound round = _getRoundByIndex(_getRoundsLength() - 1);

        if (_roundIsOpen(round)) round.resume();
    }

    function close()
        external
        onlyRole(LPlatform.ownerRole)
        whenPaused
        isGameNotClosed
    {
        uint256 roundsLength = _getRoundsLength();
        for (uint32 i = 0; i <= roundsLength - 1; i++) {
            IRound round = _getRoundByIndex(i);
            require(
                _roundIsClosed(round) || _roundIsRefund(round),
                string(
                    abi.encodePacked(
                        "GAME: round ",
                        StringsUpgradeable.toString(i),
                        "is not closed/refunded"
                    )
                )
            );
        }
        _status = LUtil.GameStatus.CLOSED;
    }

    function transferToOwner()
        external
        onlyRole(LPlatform.adminRole)
        isGameClosed
    {
        _transferOnClose();
    }

    function _calculateBalances(uint256 roundIndex)
        internal
        view
        returns (LUtil.PrizeWallet[] memory)
    {
        return _createPrizeWallets(roundIndex, false);
    }

    function _saveWalletBalances(
        uint256 roundIndex,
        LUtil.PrizeWallet[] memory balances,
        mapping(uint256 => LUtil.PrizeWallet[]) storage roundBalances
    ) internal {
        uint8 poolsCount = LPrizePool.getPoolsCount();
        for (uint256 index = 0; index < poolsCount; index++) {
            roundBalances[roundIndex].push(balances[index]);
        }
    }
}

contract Lottery is ILottery, GameUpgradeable {
    uint256 private _ticketPrice;

    event Initialized(address indexed executor, uint256 at);
    event WithdrawNative(address indexed withdrawAddress, uint256 amount);
    event BuyTickets(
        address indexed executor,
        uint8[][] numbersArray,
        uint256 amount,
        bool useBonus
    );
    event BuyTicketsWithReferrer(
        address indexed executor,
        uint8[][] numbersArray,
        uint256 amount,
        address referrer
    );
    event CalculateRandomNumber(address indexed roundAddress, uint256 number);
    event SetTicket(
        address indexed roundAddress,
        address indexed owner,
        uint256 ticketKey,
        uint8[] ticket
    );
    event ChangeRoundStatus(
        address indexed roundAddress,
        LUtil.RoundStatus indexed status
    );
    event Distribution(
        address indexed roundAddress,
        address receiver,
        LUtil.Distribution indexed distribution,
        uint256 amount
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address platformAddress, uint256 ticketPrice)
        public
        initializer
    {
        __Lottery_init(platformAddress, ticketPrice);

        emit Initialized(_msgSender(), block.timestamp);
    }

    function __Lottery_init(address platformAddress, uint256 ticketPrice)
        internal
        onlyInitializing
    {
        require(ticketPrice > 0, "Lottery: ticketPrice must be > 0");
        _ticketPrice = ticketPrice;
        __Game_init(platformAddress);
    }

    function _setReferrer(address referrer) private {
        IReferral referralSystem = _getReferral();
        if (!referralSystem.isExist(_msgSender()))
            referralSystem.setReferrer(_msgSender(), referrer);
    }

    function _tokenTransfer(IERC20 token, uint256 amount) private {
        bool success = token.transferFrom(_msgSender(), address(this), amount);
        require(success, "TRANSFER_FAILED");
    }

    function getTicketPrice() external view override returns (uint256) {
        return _ticketPrice;
    }

    receive() external payable {}

    /**
     * @dev withrdaw native tokens from lotto
     */
    function withdrawNative()
        external
        whenPaused
        onlyRole(LPlatform.adminRole)
        isGameClosed
    {
        uint256 thisBalance = address(this).balance;
        address ownerAddress = _getPlatform().getPlatformOwnerAddress();
        payable(ownerAddress).transfer(thisBalance);

        emit WithdrawNative(ownerAddress, thisBalance);
    }

    /**
     * @dev batch buy many tickets
     *
     * @param numbersArray array of numbers chosen by user for all his tickets
     * @param amount total amount of tokens
     * @param useBonus set tru if we want use bonuses for buy
     *                  if bonuses not enough we transfering tokens on remaining amount
     */
    function buyTickets(
        uint8[][] calldata numbersArray,
        uint256 amount,
        bool useBonus
    ) external whenNotPaused {
        _distributeTickets(numbersArray, amount, useBonus);

        emit BuyTickets(_msgSender(), numbersArray, amount, useBonus);
    }

    /**
     * @dev batch buy many tickets with referrer
     *
     * @param numbersArray array of numbers chosen by user for all his tickets
     * @param amount total amount of tokens
     * @param referrer user who invite to platform (set once)
     */
    function buyTicketsWithReferrer(
        uint8[][] calldata numbersArray,
        uint256 amount,
        address referrer
    ) external whenNotPaused nonZeroAddress(referrer) {
        _setReferrer(referrer);
        _distributeTickets(numbersArray, amount, false);

        emit BuyTicketsWithReferrer(
            _msgSender(),
            numbersArray,
            amount,
            referrer
        );
    }

    function startNewRound() external payable onlyRole(LPlatform.adminRole) {
        _createNewRound(_ticketPrice);
    }

    /**
     * @param numbersArray array of numbers chosen by user for all his tickets
     * @param amount ticket price * count
     */
    function _distributeTickets(
        uint8[][] memory numbersArray,
        uint256 amount,
        bool useBonus
    ) private {
        require(
            amount == _ticketPrice * numbersArray.length,
            "LOTTERY: Invalid amount of ticket"
        );
        LLottery.validateTickets(numbersArray);

        uint256 amount_;

        (bool isBonusAvailable, , , bool isRevenueAvailable) = _getGameConfig();

        if (isBonusAvailable && useBonus) {
            IERC20Bonus bonusToken = _getBonusToken();
            uint256 bonusBalance = bonusToken.balanceOf(_msgSender());

            if (bonusBalance < amount) {
                _tokenTransfer(_getToken(), amount - bonusBalance);
                amount_ = bonusBalance;
            } else amount_ = amount;
            bonusToken.transferToOwner(_msgSender(), amount_);
        } else {
            _tokenTransfer(_getToken(), amount);
        }

        _setReferrer(_msgSender());

        if (isRevenueAvailable)
            _updateUserPoints(_msgSender(), numbersArray.length);
        _distribute(amount);
    }
}
