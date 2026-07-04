// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./utils/IBabyDogeV2Router02.sol";
import "./utils/IBabyDogeV2Factory.sol";
import "./utils/IBabyDogeV2Pair.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

// Move liquitidy from DEX-A to DEX-B.
contract Migrator is ReentrancyGuard, AccessControl {
    bytes32 internal constant GOVERNANCE_ROLE = keccak256("GOVERNANCE_ROLE");

    address public treatsToken;

    IBabyDogeV2Router02 public router;

    event Migrated(
        address _oldPair,
        address token0,
        address token1,
        uint256 _amount0,
        uint256 _amount1,
        uint256 _amountOfLpReceived
    );

    constructor(IBabyDogeV2Router02 _router, address _treatsToken) {
        router = _router;
        treatsToken = _treatsToken;
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _setupRole(GOVERNANCE_ROLE, _msgSender());
    }

    /*
     * Params
     * address referral  - Address to the referral contract
     *
     * Function points the contract to the Treat Token contract
     * In case token will be deployed later.
     */

    function setTreatToken(address _address) public onlyRole(GOVERNANCE_ROLE) {
        treatsToken = _address;
    }

    /*
     * Params
     * address oldPair - Address of the lp token from which you would like to remove the liquidity from
     * address oldRouterAddress - Address of exchange router the liquidity is moved from
     *
     * Migrates liquidity from any other exchange to BabyDoge Exchange
     * Sends new LP token to whoever calls the function.
     */

    function migrate(IBabyDogeV2Pair _oldPair, address _oldRouterAddress)
        external
        nonReentrant
    {
        address token0 = _oldPair.token0();
        address token1 = _oldPair.token1();
        require(
            token0 != treatsToken && token1 != treatsToken,
            "Can't migrate Treats Token"
        );
        uint256 liquidity = _oldPair.balanceOf(msg.sender);
        _oldPair.transferFrom(msg.sender, address(this), liquidity);

        IBabyDogeV2Pair(_oldPair).approve(
            _oldRouterAddress,
            liquidity
        );
        (uint256 amountA, uint256 amountB) = IBabyDogeV2Router02(
            _oldRouterAddress
        ).removeLiquidity(
                token0,
                token1,
                liquidity,
                0,
                0,
                address(this),
                block.timestamp + 1200
            );

        IERC20(token0).approve(address(router), amountA);
        IERC20(token1).approve(address(router), amountB);
        (
            uint256 amountASent,
            uint256 amountBSent,
            uint256 liquidityReceived
        ) = router.addLiquidity(
                token0,
                token1,
                amountA,
                amountB,
                0,
                0,
                msg.sender,
                block.timestamp + 1200
            );
        emit Migrated(
            address(_oldPair),
            token0,
            token1,
            amountASent,
            amountBSent,
            liquidityReceived
        );
    }
}
