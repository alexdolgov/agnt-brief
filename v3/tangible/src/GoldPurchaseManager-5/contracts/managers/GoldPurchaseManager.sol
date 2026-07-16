// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

import "../constants/addresses.sol";
import "../constants/roles.sol";
import "../interfaces/ITokenSwap.sol";
import "../interfaces/ITreasury.sol";
import "../interfaces/IPriceOracle.sol";
import "../interfaces/ITreasuryTracker.sol";
import "../interfaces/IRWACalculator.sol";
import "../tangibleInterfaces/ITangibleMarketplace.sol";
import "../tangibleInterfaces/IInstantLiquidity.sol";
import "../tokens/interfaces/ITangibleERC20.sol";
import "../AddressAccessor.sol";
import "./PurchaseManager.sol";

contract GoldPurchaseManager is PurchaseManager, IERC721Receiver {
    using SafeERC20 for IERC20;

    enum GOLD_WEIGHT {
        XAU100,
        XAU250,
        XAU500,
        XAU1000,
        OUT
    }

    address private latestReceivedNFT;
    uint256 private latestReceivedToken;
    address[4] public goldTnfts;

    struct HelperStruct {
        address rwaCalculator;
        address treasury;
        IERC20 paymentToken;
        uint256 amount;
        bool inRange;
    }

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function setGoldTnfts(address[4] memory _goldTnfts)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        goldTnfts = _goldTnfts;
    }

    //need to add second part - to convert treasury token to payment token
    function _convertTreasuryTokenToPayment(
        IERC20 paymentToken,
        uint256 amountReserveToken,
        bool instantLiquidity_,
        uint256 itemPrice
    ) internal {
        (
            address instantLiquidity,
            address marketplace,
            address tokenSwap,
            address underlying
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        INSTANT_LIQUIDITY_ADDRESS,
                        TANGIBLE_MARKETPLACE_ADDRESS,
                        TOKEN_SWAP_ADDRESS,
                        UNDERLYING_ADDRESS
                    )
                ),
                (address, address, address, address)
            );
        IERC20(underlying).approve(tokenSwap, amountReserveToken);
        ITokenSwap(tokenSwap).exchange(
            underlying,
            address(paymentToken),
            amountReserveToken,
            itemPrice,
            ITokenSwap.EXCHANGE_TYPE.EXACT_OUTPUT
        );

        if (!instantLiquidity_) {
            paymentToken.approve(marketplace, itemPrice);
        } else {
            paymentToken.approve(instantLiquidity, itemPrice);
        }
    }

    function _checkPaymentTokenAndAmountNeeded(
        IERC20 paymentToken,
        uint256 amount
    ) internal view returns (uint256 reserveAmount) {
        (address tokenSwap, address underlying) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(TOKEN_SWAP_ADDRESS, UNDERLYING_ADDRESS)
            ),
            (address, address)
        );

        reserveAmount = ITokenSwap(tokenSwap).quoteIn(
            underlying,
            address(paymentToken),
            amount
        );
    }

    function purchaseTnft(
        GOLD_WEIGHT goldIndex,
        uint256 fingerprint,
        uint256 tokenId,
        uint256 _years,
        bool onlyLock
    ) external onlyRole(CONTROLLER_ROLE) {
        require(goldIndex < GOLD_WEIGHT.OUT, "no such gold");
        //check payment token and swap if necessary
        HelperStruct memory hs;
        (hs.rwaCalculator, hs.treasury) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(RWA_CALCULATOR_ADDRESS, TREASURY_ADDRESS)
            ),
            (address, address)
        );

        (hs.paymentToken, hs.amount, hs.inRange) = IRWACalculator(
            hs.rwaCalculator
        ).fetchPaymentTokenAndAmountTnft(
                goldTnfts[uint256(goldIndex)],
                fingerprint,
                tokenId,
                _years,
                tokenId == 0 ? true : false
            );
        require(hs.inRange, "price above range");
        uint256 reserveAmount = _checkPaymentTokenAndAmountNeeded(
            hs.paymentToken,
            hs.amount
        );

        _validatePurchase(reserveAmount);

        ITreasury(hs.treasury).executeOperation(
            reserveAmount,
            address(this),
            abi.encodePacked(
                GoldPurchaseManager.purchaseTnftCb.selector,
                abi.encode(
                    goldIndex,
                    hs.paymentToken,
                    fingerprint,
                    tokenId,
                    _years,
                    hs.amount,
                    reserveAmount,
                    onlyLock
                )
            )
        );
    }

    function purchaseTnftCb(
        GOLD_WEIGHT goldIndex,
        IERC20 paymentToken,
        uint256 fingerprint,
        uint256 tokenId,
        uint256 _years,
        uint256 amountToPay,
        uint256 reserveAmount,
        bool onlyLock
    ) external {
        (address underlying, address marketplace, address treasury) = abi
            .decode(
                addressProvider.getAddresses(
                    abi.encode(
                        UNDERLYING_ADDRESS,
                        TANGIBLE_MARKETPLACE_ADDRESS,
                        TREASURY_ADDRESS
                    )
                ),
                (address, address, address)
            );
        require(msg.sender == treasury, "not invoked by treasury");
        //take the underlying from treasury
        IERC20(underlying).safeTransferFrom(
            treasury,
            address(this),
            reserveAmount
        );
        //convert to usdc
        _convertTreasuryTokenToPayment(
            paymentToken,
            reserveAmount,
            false,
            amountToPay
        );

        if (tokenId == 0) {
            ITangibleMarketplace(marketplace).buyUnminted(
                ITangibleNFT(goldTnfts[uint256(goldIndex)]),
                fingerprint,
                _years,
                onlyLock
            );
        } else {
            ITangibleMarketplace(marketplace).buy(
                ITangibleNFT(goldTnfts[uint256(goldIndex)]),
                tokenId,
                _years
            );
        }
        //send to treasury
        IERC721(goldTnfts[uint256(goldIndex)]).safeTransferFrom(
            address(this),
            treasury,
            latestReceivedToken
        );
        // update records
        ITreasury(treasury).updateTrackerTnftExt(
            goldTnfts[uint256(goldIndex)],
            latestReceivedToken,
            true
        );
    }

    function purchaseFtnft(
        address ftnft,
        uint256 fractTokenId,
        uint256 share
    ) external onlyRole(CONTROLLER_ROLE) {
        HelperStruct memory hs;
        (hs.rwaCalculator, hs.treasury) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(RWA_CALCULATOR_ADDRESS, TREASURY_ADDRESS)
            ),
            (address, address)
        );
        (hs.paymentToken, hs.amount, hs.inRange) = IRWACalculator(
            hs.rwaCalculator
        ).fetchPaymentTokenAndAmountFtnft(ftnft, fractTokenId, share);
        require(hs.inRange, "price above range");
        uint256 reserveAmount = _checkPaymentTokenAndAmountNeeded(
            hs.paymentToken,
            hs.amount
        );

        _validatePurchase(reserveAmount);

        address gold = _fetchGoldAddressFromFraction(ftnft);
        bool found;
        for (uint256 i; i < 4; i++) {
            if (goldTnfts[i] == gold) {
                found = true;
                break;
            }
        }

        require(found, "fraction is not gold!");

        ITreasury(hs.treasury).executeOperation(
            reserveAmount,
            address(this),
            abi.encodePacked(
                GoldPurchaseManager.purchaseFtnftCb.selector,
                abi.encode(
                    ftnft,
                    hs.paymentToken,
                    fractTokenId,
                    share,
                    reserveAmount,
                    hs.amount
                )
            )
        );
    }

    function purchaseFtnftCb(
        address ftnft,
        IERC20 paymentToken,
        uint256 fractTokenId,
        uint256 share,
        uint256 reserveAmount,
        uint256 amountToPay
    ) external {
        (address underlying, address marketplace, address treasury) = abi
            .decode(
                addressProvider.getAddresses(
                    abi.encode(
                        UNDERLYING_ADDRESS,
                        TANGIBLE_MARKETPLACE_ADDRESS,
                        TREASURY_ADDRESS
                    )
                ),
                (address, address, address)
            );
        require(msg.sender == treasury, "not invoked by treasury");
        //take the underlying from treasury
        IERC20(underlying).safeTransferFrom(
            treasury,
            address(this),
            reserveAmount
        );
        //convert to usdc
        _convertTreasuryTokenToPayment(
            paymentToken,
            reserveAmount,
            false,
            amountToPay
        );

        ITangibleMarketplace(marketplace).buyFraction(
            ITangibleFractionsNFT(ftnft),
            fractTokenId,
            share
        );
        //send to treasury
        IERC721(ftnft).safeTransferFrom(
            address(this),
            treasury,
            latestReceivedToken
        );
        //update records
        ITreasury(treasury).updateTrackerFtnftExt(
            ftnft,
            latestReceivedToken,
            true
        );
        //
    }

    function _fetchGoldAddressFromFraction(address ftnft)
        internal
        view
        returns (address gold)
    {
        address marketplace = addressProvider.getAddress(
            TANGIBLE_MARKETPLACE_ADDRESS
        );
        IFactoryExt factory = ITangibleMarketplace(marketplace).factory();
        gold = address(
            factory.fractionToTnftAndId(ITangibleFractionsNFT(ftnft)).tnft
        );
    }

    function onERC721Received(
        address operator,
        address seller,
        uint256 tokenId,
        bytes calldata data
    ) external override returns (bytes4) {
        return _onERC721Received(operator, seller, tokenId, data);
    }

    function _onERC721Received(
        address, /*operator*/
        address, /*seller*/
        uint256 tokenId, /*tokenId*/
        bytes calldata /*data*/
    ) private returns (bytes4) {
        latestReceivedNFT = msg.sender;
        latestReceivedToken = tokenId;
        return IERC721Receiver.onERC721Received.selector;
    }
}
