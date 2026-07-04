// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {PairFactory} from "src/factories/PairFactory.sol";
import {UniversalRouter} from "src/UniversalRouter.sol";
import {PairFeesFactory} from "src/factories/PairFeesFactory.sol";
import {GT3} from "src/GT3.sol";
import {GT3GaugeFactory} from "src/factories/GT3GaugeFactory.sol";
import {GT3BribeFactory} from "src/factories/GT3BribeFactory.sol";
import {GT3Voter} from "src/GT3Voter.sol";
import {GT3Minter} from "src/GT3Minter.sol";
import {xGT3} from "src/xGT3.sol";
import {IPairFactory} from "src/interfaces/IPairFactory.sol";
import {ProtocolTimeLibrary} from "src/libraries/ProtocolTimeLibrary.sol";

contract Deployer {
    struct Addresses {
        address pair;
        address pairFactory;
        address pairFees;
        address pairFeesFactory;
        address router;
        address gt3;
        address gaugeFactory;
        address gauge;
        address bribeFactory;
        address bribe;
        address rebase;
        address minter;
        address xGt3;
        address voter;
    }

    struct Config {
        address owner;
        uint256 lockMaxDuration;
        address weth;
        uint256 swapFee;
        uint256 treasuryPercentage;
    }

    address public immutable PAIR_FEES_FACTORY;
    address public immutable PAIR_FACTORY;
    address public immutable ROUTER;
    address public immutable GT3_TOKEN;
    address public immutable GAUGE_FACTORY;
    address public immutable BRIBE_FACTORY;
    address public immutable REBASE;
    address public immutable MINTER;
    address public immutable XGT3;
    address public immutable VOTER;
    address public immutable FEE_RECIPIENT;

    event DeployGT3(Addresses deployment, uint256 epochDuration, uint256 maxLockDuration);

    constructor(Addresses memory implementations_, Config memory deployerConfig_, address gt3Proxy) {
        // PairFeesFactory
        {
            bytes memory initializeCalldata = abi.encodeWithSelector(
                PairFeesFactory.initialize.selector, deployerConfig_.owner, implementations_.pairFees
            );
            PAIR_FEES_FACTORY = _createProxy(implementations_.pairFeesFactory, initializeCalldata);
        }

        //PairFactory
        {
            bytes memory initializeCalldata = abi.encodeWithSelector(
                PairFactory.initialize.selector,
                deployerConfig_.owner,
                deployerConfig_.swapFee,
                deployerConfig_.treasuryPercentage,
                implementations_.pair,
                PAIR_FEES_FACTORY
            );
            PAIR_FACTORY = _createProxy(implementations_.pairFactory, initializeCalldata);
        }

        // Router
        {
            bytes memory initializeCalldata = abi.encodeWithSelector(
                UniversalRouter.initialize.selector, address(this), PAIR_FACTORY, deployerConfig_.weth
            );
            ROUTER = _createProxy(implementations_.router, initializeCalldata);
        }
        // GT3 token
        {
            GT3_TOKEN = gt3Proxy;
        }

        //xGT3
        {
            bytes memory initializeCalldata = abi.encodeWithSelector(
                xGT3.initialize.selector, deployerConfig_.owner, GT3_TOKEN, deployerConfig_.lockMaxDuration
            );
            XGT3 = _createProxy(implementations_.xGt3, initializeCalldata);
        }

        //Bribes Factory
        {
            bytes memory initializeCalldata = abi.encodeWithSelector(
                GT3BribeFactory.initialize.selector, deployerConfig_.owner, implementations_.bribe
            );
            BRIBE_FACTORY = _createProxy(implementations_.bribeFactory, initializeCalldata);
        }

        //Gauges Factory
        {
            bytes memory initializeCalldata = abi.encodeWithSelector(
                GT3GaugeFactory.initialize.selector, deployerConfig_.owner, implementations_.gauge
            );
            GAUGE_FACTORY = _createProxy(implementations_.gaugeFactory, initializeCalldata);
        }

        //Rebase
        {
            REBASE = _createProxy(implementations_.rebase, new bytes(0));
        }

        //Minter
        {
            bytes memory initializeCalldata =
                abi.encodeWithSelector(GT3Minter.initialize.selector, deployerConfig_.owner, GT3_TOKEN, XGT3, REBASE);
            MINTER = _createProxy(implementations_.minter, initializeCalldata);
        }

        //Voter
        {
            bytes memory initializeCalldata = abi.encodeWithSelector(
                GT3Voter.initialize.selector,
                deployerConfig_.owner,
                PAIR_FACTORY,
                XGT3,
                GAUGE_FACTORY,
                BRIBE_FACTORY,
                MINTER
            );
            VOTER = _createProxy(implementations_.voter, initializeCalldata);
        }

        {
            GT3Minter(MINTER).setVoter(VOTER);
            xGT3(XGT3).setVoter(VOTER);
            IPairFactory(PAIR_FACTORY).setVoter(VOTER);
            GT3(GT3_TOKEN).setMinter(MINTER);
        }
        {
            emit DeployGT3(
                Addresses({
                    pair: address(0),
                    pairFactory: PAIR_FACTORY,
                    pairFees: address(0),
                    pairFeesFactory: PAIR_FEES_FACTORY,
                    router: ROUTER,
                    gt3: GT3_TOKEN,
                    gaugeFactory: GAUGE_FACTORY,
                    gauge: address(0),
                    bribeFactory: BRIBE_FACTORY,
                    bribe: address(0),
                    rebase: REBASE,
                    minter: MINTER,
                    xGt3: XGT3,
                    voter: VOTER
                }),
                ProtocolTimeLibrary.DURATION,
                deployerConfig_.lockMaxDuration
            );
        }
    }

    function _createProxy(address implementation_, bytes memory initializeCalldata_)
        internal
        returns (address proxyAddress)
    {
        proxyAddress = address(new ERC1967Proxy(implementation_, initializeCalldata_));
    }
}
