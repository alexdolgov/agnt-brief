// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

import "./constants/addresses.sol";
import "./constants/roles.sol";
import "./interfaces/IExchange.sol";
import "./interfaces/ILiquidityManager.sol";
import "./interfaces/IRWACalculator.sol";
import "./interfaces/IPriceOracle.sol";
import "./interfaces/IStaking.sol";
import "./interfaces/ITokenSwap.sol";
import "./interfaces/ITreasury.sol";
import "./interfaces/ITreasuryTracker.sol";
import "./tokens/interfaces/ITangibleERC20.sol";
import "./tangibleInterfaces/IInstantLiquidity.sol";
import "./tangibleInterfaces/ITangibleMarketplace.sol";
import "./tangibleInterfaces/ITangibleRentShare.sol";
import "./tangibleInterfaces/ITangibleRevenueShare.sol";
import "./tangibleInterfaces/ITangiblePiNFT.sol";
import "./AddressAccessor.sol";

interface ITreasuryTrackerExt is ITreasuryTracker {
    //fractions
    function getFractionContractsInTreasury()
        external
        view
        returns (address[] memory);

    function getFractionTokensInTreasury(address ftnft)
        external
        view
        returns (uint256[] memory);

    //tnfts
    function getTnftCategoriesInTreasury()
        external
        view
        returns (address[] memory);

    function getTnftTokensInTreasury(address tnft)
        external
        view
        returns (uint256[] memory);
}

contract USDRTreasury is AddressAccessor, ITreasury, IERC721Receiver {
    using SafeERC20 for IERC20;

    uint8 public incentiveThreshold;
    uint8 public tngblBurnThreshold;
    uint8 public purchaseStableThreshold;
    uint8 public purchaseStableLPThreshold;

    address private lastReceivedNFT;
    uint256 private lastReceivedTokenId;

    bool public emergencyStop;

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        incentiveThreshold = 130;
        tngblBurnThreshold = 130;
        purchaseStableThreshold = 25;
        purchaseStableLPThreshold = 50;
    }

    function migrate(address to) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(emergencyStop, "esr");
        (address underlying, address tngbl) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(UNDERLYING_ADDRESS, TNGBL_ADDRESS)
            ),
            (address, address)
        );
        {
            uint256 balance = IERC20(underlying).balanceOf(address(this));
            if (balance > 0) {
                IERC20(underlying).approve(to, balance);
                ITreasury(to).deposit(underlying, balance);
            }
        }
        {
            uint256 balance = IERC20(tngbl).balanceOf(address(this));
            if (balance > 0) {
                IERC20(tngbl).approve(to, balance);
                ITreasury(to).deposit(tngbl, balance);
            }
        }
    }

    function migrateNFT(
        ITreasuryTrackerExt ttFrom,
        address to,
        bool ftnft
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(emergencyStop, "esr");
        ITreasuryTrackerExt treasuryTracker = ITreasuryTrackerExt(
            _fetchAddress(TREASURY_TRACKER_ADDRESS)
        );
        address[] memory nfts = !ftnft
            ? ttFrom.getTnftCategoriesInTreasury()
            : ttFrom.getFractionContractsInTreasury();
        uint256 length = nfts.length;
        for (uint256 i; i < length; i++) {
            uint256[] memory tokenIds = !ftnft
                ? ttFrom.getTnftTokensInTreasury(nfts[i])
                : ttFrom.getFractionTokensInTreasury(nfts[i]);
            uint256 lengthTokens = tokenIds.length;
            for (uint256 j; j < lengthTokens; j++) {
                IERC721(nfts[i]).safeTransferFrom(
                    address(this),
                    to,
                    tokenIds[j]
                );
                //update tracker if it is different
                if (address(treasuryTracker) != address(ttFrom)) {
                    if (!ftnft) {
                        updateTrackerTnft(nfts[i], tokenIds[j], true);
                    } else {
                        updateTrackerFtnft(nfts[i], tokenIds[j], true);
                    }
                }
            }
        }
    }

    function setThresholds(
        uint8 _purchaseStableThreshold,
        uint8 _purchaseStableLPThreshold,
        uint8 _tngblThreshold,
        uint8 _incentiveThreshold
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        purchaseStableThreshold = _purchaseStableThreshold;
        purchaseStableLPThreshold = _purchaseStableLPThreshold;
        tngblBurnThreshold = _tngblThreshold;
        incentiveThreshold = _incentiveThreshold;
    }

    function executeOperation(
        uint256 amount,
        address receiver,
        bytes calldata operation
    ) external onlyRole(CONTROLLER_ROLE) returns (bytes memory result) {
        address underlying = _fetchAddress(UNDERLYING_ADDRESS);
        IERC20(underlying).approve(receiver, amount);
        bool success;
        (success, result) = receiver.call(operation);
        require(success, string(result));
        _verifyBacking(100, true);
    }

    //workaround for purchasing initial sale RE
    function purchaseReInitialSale(
        IERC20 paymentToken,
        address ftnft,
        uint256 fractTokenId,
        uint256 share,
        uint256 ptAmount
    ) external {
        (address rePurchaseManager, address marketplace) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(
                    RE_PURCHASE_MANAGER_ADDRESS,
                    TANGIBLE_MARKETPLACE_ADDRESS,
                    TREASURY_TRACKER_ADDRESS
                )
            ),
            (address, address)
        );
        require(msg.sender == rePurchaseManager, "only RePM allowed");

        paymentToken.approve(marketplace, ptAmount);
        //purchase ftnft
        ITangibleMarketplace(marketplace).buyFraction(
            ITangibleFractionsNFT(ftnft),
            fractTokenId,
            share
        );
        //update tracker
        updateTrackerFtnft(ftnft, lastReceivedTokenId, true);
    }

    function executeOperationNFT(
        address nft,
        uint256[] memory tokenIds,
        address receiver,
        bytes calldata operation
    ) external onlyRole(CONTROLLER_ROLE) returns (bytes memory result) {
        uint256 length = tokenIds.length;
        for (uint256 i; i < length; i++) {
            IERC721(nft).approve(receiver, tokenIds[i]);
        }
        bool success;
        (success, result) = receiver.call(operation);
        require(success, "operationNFT failed");
        _verifyBacking(100, true);
    }

    function _swapToTreasuryToken(address tokenFrom, uint256 amount) internal {
        require(
            IERC20(tokenFrom).balanceOf(address(this)) <= amount,
            "not enough token"
        );
        (address tokenSwap, address underlying) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(TOKEN_SWAP_ADDRESS, UNDERLYING_ADDRESS)
            ),
            (address, address)
        );
        uint256 amountOut = ITokenSwap(tokenSwap).quoteOut(
            tokenFrom,
            underlying,
            amount
        );
        IERC20(tokenFrom).approve(tokenSwap, amount);
        ITokenSwap(tokenSwap).exchange(
            tokenFrom,
            underlying,
            amount,
            amountOut,
            ITokenSwap.EXCHANGE_TYPE.EXACT_INPUT
        );
    }

    function deposit(address stableToken, uint256 amount)
        external
        override
        validToken(stableToken)
    {
        //update books
        IERC20(stableToken).safeTransferFrom(msg.sender, address(this), amount);
    }

    function getTreasuryValue()
        public
        view
        returns (
            uint256 stable,
            uint256 rwa,
            uint256 tngbl_,
            uint256 liquidity,
            uint256 debt
        )
    {
        (
            address calculator,
            address oracle,
            address tngbl,
            address treasuryTracker,
            address underlying,
            address liquidityManager,
            address promissory
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        RWA_CALCULATOR_ADDRESS,
                        TNGBL_ORACLE_ADDRESS,
                        TNGBL_ADDRESS,
                        TREASURY_TRACKER_ADDRESS,
                        UNDERLYING_ADDRESS,
                        LIQUIDITY_MANAGER_ADDRESS,
                        PROMISSORY_ADDRESS
                    )
                ),
                (address, address, address, address, address, address, address)
            );

        (uint256 usdrLPAmount, uint256 underlyingLPAmount) = ILiquidityManager(
            liquidityManager
        ).getTokenAmounts();

        uint256 underlyingMultiplier = 10 **
            (18 - IERC20Metadata(underlying).decimals());
        stable =
            IERC20(underlying).balanceOf(address(this)) *
            underlyingMultiplier;
        {
            uint8 tngblDecimals = IERC20Metadata(tngbl).decimals();
            tngbl_ =
                (IERC20(tngbl).balanceOf(address(this)) *
                    IPriceOracle(oracle).quote(10**tngblDecimals)) /
                (10**tngblDecimals);
        }
        rwa =
            IRWACalculator(calculator).calculate(
                ITreasuryTracker(treasuryTracker),
                IERC20(underlying)
            ) *
            underlyingMultiplier;
        liquidity =
            underlyingLPAmount *
            underlyingMultiplier +
            usdrLPAmount *
            1e9;
        debt =
            IERC20(promissory).totalSupply() *
            (10**(18 - IERC20Metadata(promissory).decimals()));
    }

    function withdraw(
        address stableToken,
        uint256 amount,
        address receiver
    ) external override validToken(stableToken) {
        (address usdrExchange, address promissory) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(USDR_EXCHANGE_ADDRESS, PROMISSORY_ADDRESS)
            ),
            (address, address)
        );
        require(
            msg.sender == usdrExchange || msg.sender == promissory,
            "not allowed"
        );
        IERC20(stableToken).safeTransfer(receiver, amount);
    }

    //add fraction storage payment!!!!!!!

    function defractionalize(
        ITangibleFractionsNFT ftnft,
        uint256[] memory tokenIds
    ) external onlyRole(CONTROLLER_ROLE) {
        ftnft.defractionalize(tokenIds);
        uint256 length = tokenIds.length;
        ITreasuryTracker tracker = ITreasuryTracker(
            _fetchAddress(TREASURY_TRACKER_ADDRESS)
        );
        for (uint256 i = 1; i < length; i++) {
            tracker.ftnftTreasuryPlaced(address(ftnft), tokenIds[i], false);
        }
        if (lastReceivedNFT == address(ftnft)) {
            tracker.updateFractionData(address(ftnft), tokenIds[0]);
        } else {
            tracker.ftnftTreasuryPlaced(address(ftnft), tokenIds[0], false);
            tracker.tnftTreasuryPlaced(
                lastReceivedNFT,
                lastReceivedTokenId,
                true
            );
        }
        IERC20 revenueToken = IERC20(_fetchAddress(REVENUE_TOKEN_ADDRESS));
        _swapToTreasuryToken(
            address(revenueToken),
            revenueToken.balanceOf(address(this))
        );
    }

    function updateTrackerFtnftExt(
        address ftnft,
        uint256 tokenId,
        bool placed
    ) external onlyRole(TRACKER_ROLE) {
        updateTrackerFtnft(ftnft, tokenId, placed);
    }

    function updateTrackerFtnft(
        address ftnft,
        uint256 tokenId,
        bool placed
    ) internal {
        ITreasuryTracker tracker = ITreasuryTracker(
            _fetchAddress(TREASURY_TRACKER_ADDRESS)
        );
        tracker.ftnftTreasuryPlaced(ftnft, tokenId, placed);
    }

    function updateTrackerTnftExt(
        address tnft,
        uint256 tokenId,
        bool placed
    ) external onlyRole(TRACKER_ROLE) {
        updateTrackerTnft(tnft, tokenId, placed);
    }

    function updateTrackerTnft(
        address tnft,
        uint256 tokenId,
        bool placed
    ) internal {
        ITreasuryTracker tracker = ITreasuryTracker(
            _fetchAddress(TREASURY_TRACKER_ADDRESS)
        );
        tracker.tnftTreasuryPlaced(tnft, tokenId, placed);
    }

    function toggleStop() external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (emergencyStop) {
            emergencyStop = false;
        } else {
            emergencyStop = true;
        }
    }

    function withdrawToken(address token)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        (address underlying, address tngbl) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(UNDERLYING_ADDRESS, TNGBL_ADDRESS)
            ),
            (address, address)
        );
        if (token == tngbl || token == underlying) {
            require(emergencyStop, "emergency stop required");
        }
        IERC20(token).safeTransfer(
            msg.sender,
            IERC20(token).balanceOf(address(this))
        );
    }

    function withdrawTnft(
        address _nft,
        uint256[] memory _tokenIds,
        bool ftnft
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(emergencyStop, "emergency stop required");
        uint256 length = _tokenIds.length;
        for (uint256 i; i < length; i++) {
            require(
                IERC721(_nft).ownerOf(_tokenIds[i]) == address(this),
                "Treasury not owner"
            );
            IERC721(_nft).safeTransferFrom(
                address(this),
                msg.sender,
                _tokenIds[i]
            );
            if (!ftnft) {
                updateTrackerTnft(_nft, _tokenIds[i], false);
            } else {
                updateTrackerFtnft(_nft, _tokenIds[i], false);
            }
        }
    }

    function burnTNGBL() external onlyRole(CONTROLLER_ROLE) {
        (address tngbl, address oracle, address exchange, address staking) = abi
            .decode(
                addressProvider.getAddresses(
                    abi.encode(
                        TNGBL_ADDRESS,
                        TNGBL_ORACLE_ADDRESS,
                        USDR_EXCHANGE_ADDRESS,
                        STAKING_ADDRESS
                    )
                ),
                (address, address, address, address)
            );
        uint256 tngblBalance = IERC20(tngbl).balanceOf(address(this));
        uint256 burnAmount;
        if (tngblBalance > 0) {
            uint256 backing;
            {
                (
                    uint256 stable,
                    uint256 rwa,
                    ,
                    uint256 liquidity,
                    uint256 debt
                ) = getTreasuryValue();
                backing = stable + rwa + liquidity - debt;
            }
            uint256 scaledMarketCap = IStaking(staking).usdrMarketCap() * 1e9;
            if ((scaledMarketCap * tngblBurnThreshold) / 100 <= backing) {
                burnAmount = tngblBalance;
                IExchange(exchange).afterBurnTNGBL(0, 0);
            } else {
                uint256 tngblPrice = IPriceOracle(oracle).quote(1e18);
                uint256 avgMintPrice = IExchange(exchange).avgTNGBLMintPrice();
                if (tngblPrice > (avgMintPrice * 101) / 100) {
                    burnAmount =
                        (tngblBalance * tngblPrice) /
                        avgMintPrice -
                        tngblBalance;
                    IExchange(exchange).afterBurnTNGBL(burnAmount, tngblPrice);
                }
            }
        }
        require(burnAmount > 0, "nothing to burn");
        ITangibleERC20(tngbl).approve(address(this), burnAmount);
        ITangibleERC20(tngbl).burn(burnAmount);
    }

    function claimRentForToken(
        address revenueShare,
        address contractAddress,
        uint256 tokenId
    ) external onlyRole(CONTROLLER_ROLE) {
        address revenueToken = ITangibleRevenueShare(revenueShare)
            .revenueToken();
        uint256 balanceBefore = IERC20(revenueToken).balanceOf(address(this));
        ITangibleRevenueShare(revenueShare).claimForToken(
            contractAddress,
            tokenId
        );
        uint256 claimedAmount = IERC20(revenueToken).balanceOf(address(this)) -
            balanceBefore;
        _swapToTreasuryToken(revenueToken, claimedAmount);

        emit RentClaimed(revenueToken, claimedAmount);
    }

    function claimTngblRevenue(
        address contractAddress,
        uint256 tokenId,
        bool fraction
    ) external {
        (address revenueShare, address piNft, address tngbl) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(
                    TANGIBLE_REVENUE_SHARE_ADDRESS,
                    TANGIBLE_PINFT_ADDRESS,
                    TNGBL_ADDRESS
                )
            ),
            (address, address, address)
        );
        //rev data
        address revenueToken = ITangibleRevenueShare(revenueShare)
            .revenueToken();
        uint256 balanceBeforeRevToken = IERC20(revenueToken).balanceOf(
            address(this)
        );
        //tngbl data
        uint256 balanceBeforeTngblToken = IERC20(tngbl).balanceOf(
            address(this)
        );
        // claim tngbl first
        if (!fraction) {
            // it is TNFT
            (uint256 free, ) = ITangiblePiNFT(piNft).claimableIncome(
                ITangibleNFT(contractAddress).tnftToPassiveNft(tokenId)
            );
            ITangibleNFT(contractAddress).claim(tokenId, free);
        } else {
            // it is FRACTION
            ITangibleFractionsNFT(contractAddress).claim(
                tokenId,
                ITangibleFractionsNFT(contractAddress).claimableIncome(tokenId)
            );
        }
        uint256 claimedAmountTngbl = IERC20(tngbl).balanceOf(address(this)) -
            balanceBeforeTngblToken;
        // claim revenue
        ITangibleRevenueShare(revenueShare).claimForToken(
            contractAddress,
            tokenId
        );
        uint256 claimedAmountRev = IERC20(revenueToken).balanceOf(
            address(this)
        ) - balanceBeforeRevToken;

        emit TNGBLClaimed(tngbl, claimedAmountTngbl);
        emit RevenueShareClaimed(revenueToken, claimedAmountRev);
    }

    function payFractionStorage(
        address ftnft,
        uint256 tokenId,
        uint256 amount
    ) external onlyRole(CONTROLLER_ROLE) {
        (address marketplace, address tokenSwap, address underlying) = abi
            .decode(
                addressProvider.getAddresses(
                    abi.encode(
                        TANGIBLE_MARKETPLACE_ADDRESS,
                        TOKEN_SWAP_ADDRESS,
                        UNDERLYING_ADDRESS
                    )
                ),
                (address, address, address)
            );
        IFactoryExt factory = ITangibleMarketplace(marketplace).factory();
        IFractionStorageManager manager = factory.storageManagers(
            ITangibleFractionsNFT(ftnft)
        );
        factory.defUSD().approve(address(manager), amount);

        uint256 reserveAmount = ITokenSwap(tokenSwap).quoteIn(
            underlying,
            address(factory.defUSD()),
            amount
        );

        IERC20(underlying).approve(tokenSwap, reserveAmount);
        ITokenSwap(tokenSwap).exchange(
            underlying,
            address(factory.defUSD()),
            reserveAmount,
            amount,
            ITokenSwap.EXCHANGE_TYPE.EXACT_OUTPUT
        );
        manager.payShareStorage(tokenId);
    }

    function onERC721Received(
        address, /*operator*/
        address, /*seller*/
        uint256 tokenId,
        bytes calldata /*data*/
    ) external override returns (bytes4) {
        lastReceivedNFT = msg.sender;
        lastReceivedTokenId = tokenId;
        return IERC721Receiver.onERC721Received.selector;
    }

    function _fetchAddress(bytes32 contractAddress)
        internal
        view
        returns (address)
    {
        return addressProvider.getAddress(contractAddress);
    }

    function _verifyBacking(uint8 threshold, bool includeTNGBL) internal view {
        address staking = _fetchAddress(STAKING_ADDRESS);
        (
            uint256 stable,
            uint256 rwa,
            uint256 tngbl,
            uint256 liquidity,
            uint256 debt
        ) = getTreasuryValue();
        uint256 scaledMarketCap = IStaking(staking).usdrMarketCap() * 1e9;
        if (!includeTNGBL) {
            tngbl = 0;
        }
        uint256 backing = stable + rwa + tngbl + liquidity - debt;
        require(
            (scaledMarketCap * threshold) / 100 <= backing,
            "insufficient backing"
        );
    }

    modifier validToken(address token) {
        (address underlying, address tngbl) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(UNDERLYING_ADDRESS, TNGBL_ADDRESS)
            ),
            (address, address)
        );
        require(token == underlying || token == tngbl, "invalid token");
        _;
    }
}
