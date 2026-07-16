// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "./Token.sol";
import "./MarketMaker.sol";
import "./TokenFactory.sol";

import {IAlgebraFactory} from "algebra-core/interfaces/IAlgebraFactory.sol";
import {IAlgebraPool} from "algebra-core/interfaces/IAlgebraPool.sol";
import {IERC20Minimal} from "algebra-core/interfaces/IERC20Minimal.sol";
import {LiquidityMath} from "algebra-core/libraries/LiquidityMath.sol";
import {IncentiveKey} from "algebra-farming/base/IncentiveKey.sol";
import {IFarmingCenter} from "algebra-farming/interfaces/IFarmingCenter.sol";
import {INonfungiblePositionManager} from "algebra-periphery/interfaces/INonfungiblePositionManager.sol";
import {TickMath} from "algebra-core/libraries/TickMath.sol";
import {MarketMaking} from "src/lib/MarketMaking.sol";

interface IncentiveMaker {
    function getGauges(uint256, uint256) external view returns (address[] memory);

    function gaugesLength() external view returns (uint256);
}

interface GnosisSafe {
    function setup(
        address[] calldata _owners,
        uint256 _threshold,
        address to,
        bytes calldata data,
        address fallbackHandler,
        address paymentToken,
        uint256 payment,
        address payable paymentReceiver
    ) external;
}

interface GnosisSafeProxyFactory {
    function createProxyWithNonce(address _singleton, bytes memory initializer, uint256 saltNonce)
        external
        returns (GnosisSafe);
}

contract MarketMakerFactory {
    IERC20 immutable money;
    IAlgebraFactory immutable algebraFactory;
    IFarmingCenter immutable farmingCenter;
    INonfungiblePositionManager immutable nft;
    GnosisSafeProxyFactory immutable gsf;
    IncentiveMaker immutable incentiveMaker;
    TokenFactory immutable tf;
    address immutable gnosis;
    address immutable fbh;
    address admin;

    constructor(
        IERC20 money_,
        IAlgebraFactory factory_,
        IFarmingCenter farmingCenter_,
        INonfungiblePositionManager nft_,
        TokenFactory tf_,
        address incentiveMaker_,
        address gsf_,
        address gnosis_,
        address fbh_,
        address admin_
    ) {
        tf = tf_;
        money = money_;
        algebraFactory = factory_;
        farmingCenter = farmingCenter_;
        nft = nft_;
        incentiveMaker = IncentiveMaker(incentiveMaker_);
        gsf = GnosisSafeProxyFactory(gsf_);
        gnosis = gnosis_;
        admin = admin_;
        fbh = fbh_;
    }

    //TODO mitigate predeploy dos
    function createToken(
        string memory name,
        string memory symbol,
        uint256 totalSupply,
        uint256 initialCirculatingSupply,
        uint256 initialReserve,
        MarketMaking.MarketMakingParam memory param
    ) external returns (MarketMaker, IERC20) {
        IERC20 tok = IERC20(tf.deploy(name, symbol, totalSupply));
        IAlgebraPool pool = IAlgebraPool(algebraFactory.createPool(address(money), address(tok)));
        pool.initialize(uint160(Math.sqrt(uint256((1 << 96) * initialReserve) / initialCirculatingSupply) << 48));
        MarketMaker mm = new MarketMaker(
            farmingCenter,
            nft,
            address(incentiveMaker.getGauges(incentiveMaker.gaugesLength() - 1, 1)[0]),
            msg.sender,
            admin,
            param
        );
        mm.approveTokens();
        tok.transfer(address(mm), totalSupply - initialCirculatingSupply);
        tok.transfer(msg.sender, initialCirculatingSupply);
        money.transferFrom(msg.sender, address(mm), initialReserve);
        if (msg.sender != admin) {
            address[] memory r = new address[](2);
            r[0] = admin;
            r[1] = msg.sender;
            GnosisSafe gs = gsf.createProxyWithNonce(
                gnosis,
                abi.encodeWithSelector(
                    GnosisSafe.setup.selector, r, 2, address(0), "", fbh, address(0), 0, payable(address(0))
                ),
                uint160(address(tok))
            );
            mm.transferOwnership(address(gs));
        } else {
            mm.transferOwnership(admin);
        }
        mm.rebalance();

        return (mm, tok);
    }
}
