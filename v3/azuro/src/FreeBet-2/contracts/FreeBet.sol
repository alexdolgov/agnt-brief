// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.9;

import "./interface/IWNative.sol";
import "./utils/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC1155/utils/ERC1155HolderUpgradeable.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";

interface IBet {
    struct BetData {
        address affiliate;
        bytes data;
    }
}

interface ILP {
    function bet(
        address core,
        uint128 amount,
        uint64 expiresAt,
        IBet.BetData calldata betData
    ) external returns (uint256 tokenId);

    function checkAccess(
        address account,
        address target,
        bytes4 selector
    ) external;

    function viewPayout(address core, uint256 tokenId)
        external
        view
        returns (uint128 payout);

    function withdrawPayout(address core, uint256 tokenId) external;
}

/// @title The tool allows you to grant free bets for any user.
contract FreeBet is
    ERC721Upgradeable,
    ERC1155HolderUpgradeable,
    OwnableUpgradeable
{
    struct Bet {
        uint128 amount; // Maximum bet amount
        uint64 minOdds; // Minimum allowed betting odds
        uint64 durationTime; // Shelf life
    }

    struct AzuroBet {
        address core;
        address owner;
        uint256 freeBetId;
        uint128 amount;
        uint128 payout;
    }

    struct BatchWithdraw {
        address account;
        uint128 amount;
    }

    ILP public lp;
    string public baseURI;
    address public token;
    uint256 public lockedReserve;
    mapping(uint256 => Bet) public freeBets;
    mapping(uint256 => AzuroBet) public azuroBets;
    mapping(uint256 => uint64) public expirationTime;
    uint256 public lastTokenId;

    event LpChanged(address indexed newLp);
    event FreeBetMinted(address indexed receiver, uint256 indexed id, Bet bet);
    event FreeBetMintedBatch(address[] receivers, uint256[] ids, Bet[] bets);
    event FreeBetRedeemed(
        address indexed core,
        address indexed bettor,
        uint256 indexed id,
        uint256 azuroBetId,
        uint128 amount
    );
    event FreeBetReissued(
        address indexed receiver,
        uint256 indexed id,
        Bet bet
    );
    event BettorWin(
        address indexed core,
        address indexed bettor,
        uint256 indexed azuroBetId,
        uint128 amount
    );

    error AlreadyResolved();
    error BetExpired();
    error DifferentArraysLength();
    error InsufficientAmount();
    error InsufficientContractBalance();
    error NonTransferable();
    error OddsTooSmall();
    error OnlyBetOwner();
    error UnknownCore();
    error WrongToken();
    error ZeroAmount();
    error ZeroDuration();

    /**
     * @notice Throw if caller have no access to function with selector `selector`.
     */
    modifier restricted(bytes4 selector) {
        lp.checkAccess(msg.sender, address(this), selector);
        _;
    }

    receive() external payable {
        if (msg.sender != token) {
            IWNative(token).deposit{value: msg.value}();
        }
    }

    function initialize(address token_) external initializer {
        __ERC721_init("XYZFreeBet", "XFBET");
        __ERC1155Holder_init();
        __Ownable_init();
        if (token_ == address(0)) revert WrongToken();
        token = token_;
    }

    /**
     * @notice See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721Upgradeable, ERC1155ReceiverUpgradeable)
        returns (bool)
    {
        return
            ERC721Upgradeable.supportsInterface(interfaceId) ||
            ERC1155ReceiverUpgradeable.supportsInterface(interfaceId);
    }

    /**
     * @notice Owner: Bound the contract with Liquidity Pool 'lp'.
     */
    function setLp(address lp_) external onlyOwner {
        lp = ILP(lp_);
        emit LpChanged(lp_);
    }

    /**
     * @notice Owner: Set 'uri' as base NFT URI.
     * @param  uri base URI string
     */
    function setBaseURI(string calldata uri) external onlyOwner {
        baseURI = uri;
    }

    /**
     * @notice Get all expired and not yet burned free bets IDs.
     * @param  start starting free bet ID to search from
     * @param  count number of IDs to search through
     * @return array of found IDs and its size (remaining elements filled with 0)
     */
    function getExpiredUnburned(uint256 start, uint256 count)
        external
        view
        returns (uint256[] memory, uint256)
    {
        uint256[] memory ids = new uint256[](count);
        uint256 index;
        uint256 end = start + count;
        Bet storage bet;

        for (uint256 id = start; id < end; id++) {
            bet = freeBets[id];
            if (bet.amount > 0 && expirationTime[id] <= block.timestamp) {
                ids[index++] = id;
            }
        }
        return (ids, index);
    }

    /**
     * @notice Burn expired free bets with given IDs.
     * @param  ids array of IDs to check expiration and burn
     */
    function burnExpired(uint256[] calldata ids) external {
        uint256 burnedAmount;
        uint256 len = ids.length;
        uint256 id;
        Bet storage bet;
        uint128 amount;

        for (uint256 i = 0; i < len; i++) {
            id = ids[i];
            bet = freeBets[id];
            amount = bet.amount;

            if (amount > 0 && expirationTime[id] <= block.timestamp) {
                burnedAmount += amount;
                bet.amount = 0;
                _burn(id);
            }
        }

        lockedReserve -= burnedAmount;
    }

    /**
     * @notice Withdraw unlocked token reserves.
     * @param  amount amount to withdraw
     */
    function withdrawReserve(uint128 amount)
        external
        restricted(this.withdrawReserve.selector)
    {
        _checkInsufficient(amount);

        TransferHelper.safeTransfer(token, msg.sender, amount);
    }

    /**
     * @notice Withdraw unlocked token reserves list.
     * @param  batch list of BatchWithdraw data
     */
    function withdrawReservesTo(BatchWithdraw[] calldata batch)
        external
        restricted(this.withdrawReserve.selector)
    {
        uint128 totalAmount;
        for (uint256 i; i < batch.length; ++i) {
            totalAmount += batch[i].amount;
        }
        _checkInsufficient(totalAmount);

        for (uint256 i; i < batch.length; ++i) {
            TransferHelper.safeTransfer(
                token,
                batch[i].account,
                batch[i].amount
            );
        }
    }

    /**
     * @notice Withdraw unlocked token reserves in native currency.
     * @param  amount amount to withdraw
     */
    function withdrawReserveNative(uint128 amount)
        external
        restricted(this.withdrawReserveNative.selector)
    {
        _checkInsufficient(amount);

        IWNative(token).withdraw(amount);
        TransferHelper.safeTransferETH(msg.sender, amount);
    }

    /**
     * @notice Mint free bets to users.
     * @notice Arrays must have the same length, receivers[i] is mapped with bets[i].
     * @param  receivers addresses to mint free bets to
     * @param  bets bets data
     */
    function mintBatch(address[] calldata receivers, Bet[] calldata bets)
        external
        restricted(this.mintBatch.selector)
    {
        uint256 receiversLength = receivers.length;
        if (receiversLength != bets.length) revert DifferentArraysLength();
        uint256[] memory ids = new uint256[](receiversLength);
        uint256 lastId = lastTokenId;
        uint128 amountsSum;

        for (uint256 i = 0; i < receiversLength; i++) {
            ids[i] = ++lastId;
            amountsSum += bets[i].amount;
            _safeMint(receivers[i], lastId, bets[i]);
        }

        _checkInsufficient(amountsSum);

        lastTokenId = lastId;
        lockedReserve += amountsSum;

        emit FreeBetMintedBatch(receivers, ids, bets);
    }

    /**
     * @notice Mint free bet to user.
     * @param  to address to mint free bet to
     * @param  bet bets data
     */
    function mint(address to, Bet calldata bet)
        external
        restricted(this.mint.selector)
    {
        _checkInsufficient(bet.amount);

        lockedReserve += bet.amount;
        uint256 newId = ++lastTokenId;

        _safeMint(to, newId, bet);
        emit FreeBetMinted(to, newId, bet);
    }

    /**
     * @notice Redeem free bet `id` and make real bet.
     * @notice See {ILP-bet}.
     * @return Minted AzuroBet token ID
     */
    function redeem(
        address core,
        uint256 id,
        uint256 conditionId,
        uint128 amount,
        uint64 outcomeId,
        uint64 deadline,
        uint64 minOdds,
        address affiliate
    ) external returns (uint256) {
        if (ownerOf(id) != msg.sender) revert OnlyBetOwner();

        Bet storage bet = freeBets[id];
        if (bet.amount < amount) revert InsufficientAmount();
        if (expirationTime[id] <= block.timestamp) revert BetExpired();
        if (bet.minOdds > minOdds) revert OddsTooSmall();

        lockedReserve -= amount;
        bet.amount -= amount;

        TransferHelper.safeApprove(token, address(lp), amount);
        uint256 azuroBetId = lp.bet(
            core,
            amount,
            deadline,
            IBet.BetData(affiliate, abi.encode(conditionId, outcomeId, minOdds))
        );

        azuroBets[azuroBetId] = AzuroBet(core, msg.sender, id, amount, 0);
        emit FreeBetRedeemed(core, msg.sender, id, azuroBetId, amount);
        return azuroBetId;
    }

    /**
     * @notice Resolve payout for bet with ID `azuroBetId` made through free bet redeem.
     */
    function resolvePayout(uint256 azuroBetId) external {
        azuroBets[azuroBetId].payout = _resolvePayout(azuroBetId);
    }

    /**
     * @notice Withdraw payout for bet with ID `azuroBetId` for freebet owner, made through free bet redeem.
     */
    function withdrawPayout(uint256 azuroBetId) external {
        (address owner_, uint128 payout) = _withdrawPayout(azuroBetId);
        if (payout > 0) {
            TransferHelper.safeTransfer(token, owner_, payout);
        }
    }

    /**
     * @notice Withdraw payout in native currency for bet with ID `azuroBetId` for freebet owner, made through free bet redeem.
     */
    function withdrawPayoutNative(uint256 azuroBetId) external {
        (address owner_, uint128 payout) = _withdrawPayout(azuroBetId);
        if (payout > 0) {
            IWNative(token).withdraw(payout);
            TransferHelper.safeTransferETH(owner_, payout);
        }
    }

    /**
     * @notice Withdraw payout for bet with ID `azuroBetId` for freebet owner, made through free bet redeem.
     */
    function _withdrawPayout(uint256 azuroBetId)
        internal
        returns (address, uint128)
    {
        AzuroBet storage azuroBet = azuroBets[azuroBetId];
        address owner_ = azuroBet.owner;

        uint128 payout;
        if (azuroBet.amount == 0) {
            // was resolved
            payout = azuroBet.payout;
            if (payout > 0) azuroBet.payout = 0;
        } else {
            // was not resolved
            payout = _resolvePayout(azuroBetId);
        }

        if (payout > 0) {
            emit BettorWin(azuroBet.core, owner_, azuroBetId, payout);
        }

        return (owner_, payout);
    }

    /**
     * @notice Resolve payout for bet with ID `azuroBetId` made through free bet redeem.
     */
    function _resolvePayout(uint256 azuroBetId) internal returns (uint128) {
        AzuroBet storage azuroBet = azuroBets[azuroBetId];
        uint128 betAmount = azuroBet.amount;
        if (betAmount == 0) revert AlreadyResolved();

        uint256 freeBetId = azuroBet.freeBetId;
        Bet storage bet = freeBets[freeBetId];
        address core = azuroBet.core;

        uint128 fullPayout = lp.viewPayout(core, azuroBetId);
        if (fullPayout > 0) {
            lp.withdrawPayout(core, azuroBetId);
        }

        if (fullPayout != betAmount) {
            // win or lose
            if (freeBets[freeBetId].amount == 0) {
                _burn(freeBetId);
            }
        } else {
            // cancel
            bet.amount += betAmount;
            lockedReserve += betAmount;
            expirationTime[freeBetId] =
                uint64(block.timestamp) +
                bet.durationTime;

            emit FreeBetReissued(azuroBet.owner, freeBetId, bet);
        }

        azuroBet.amount = 0;
        return (fullPayout > betAmount) ? (fullPayout - betAmount) : 0;
    }

    /**
     * @notice See {ERC721Upgradeable-_safeMint}.
     */
    function _safeMint(
        address to,
        uint256 id,
        Bet calldata bet
    ) internal {
        if (bet.amount == 0) revert ZeroAmount();
        if (bet.durationTime == 0) revert ZeroDuration();

        freeBets[id] = bet;
        expirationTime[id] = uint64(block.timestamp) + bet.durationTime;

        _safeMint(to, id);
    }

    /**
     * @notice See {ERC721Upgradeable-_transfer}.
     */
    function _transfer(
        address,
        address,
        uint256
    ) internal pure override {
        revert NonTransferable();
    }

    /**
     * @notice See {ERC721Upgradeable-_baseURI}.
     */
    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    /**
     * @notice Throw if the contract free reserves of tokens `tokens` are less than `amount`.
     */
    function _checkInsufficient(uint128 amount) internal view {
        if (IERC20(token).balanceOf(address(this)) < lockedReserve + amount)
            revert InsufficientContractBalance();
    }
}
