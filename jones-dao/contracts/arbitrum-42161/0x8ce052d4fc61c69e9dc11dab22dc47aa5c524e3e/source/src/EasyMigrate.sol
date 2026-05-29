// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {ILeverageRouter} from "src/interfaces/leverage/ILeverageRouter.sol";
import {IjGMIndex} from "src/interfaces/gm/IjGMIndex.sol";
import {ReentrancyGuard} from "openzeppelin-contracts/utils/ReentrancyGuard.sol";
import {IIndividualBuffer} from "src/interfaces/IIndividualBuffer.sol";

interface IGlpAdapter {
    function redeemGlpBasket(uint256 _shares, bool _compound, address _token, bool _native)
        external
        returns (uint256);
}

/**
 * @title EasyMigrate
 * @author JonesDAO
 * @notice Performs the migration of jGLP to jGM in a single transaction.
 * @dev Needs offchain signature to perform the deposit on jGM.
 */
contract EasyMigrate is ReentrancyGuard {
    /// @dev Contract that performs jGLP withdrawals.
    IGlpAdapter public constant GLP_ROUTER = IGlpAdapter(0xB6C640603C1075691019fF011DfB640b7Bb5cD6c);

    /// @dev jGLP token contract.
    IERC20 public constant JGLP = IERC20(0x7241bC8035b65865156DDb5EdEf3eB32874a3AF6);

    /// @dev Native USDC token contract.
    address public constant NATIVE_USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;

    /// @dev Contract responsible to perform the deposit on jGM. Takes a byte signature as input, containing
    ///      a GMData struct, which contains the amount of USDC to be deposited + a signature made offchain.
    ILeverageRouter public immutable leverageRouter;

    /// @dev jGM receipt token.
    IjGMIndex public immutable jGm;

    IIndividualBuffer public individualBuffer;

    address public owner;

    bool public paused;

    constructor(ILeverageRouter _leverageRouter, IjGMIndex _jGm, IIndividualBuffer _individualBuffer) {
        leverageRouter = _leverageRouter;
        jGm = _jGm;
        owner = msg.sender;
        paused = false;
        individualBuffer = _individualBuffer;
    }

    event PerformedExchange(address indexed user, uint256 amountofJGLP, uint256 receivedJGM);
    event UsdcRefund(address indexed user, uint256 amount);

    /**
     * @notice Redeems jGLP for USDC and enters deposit queue.
     * @param jGLPAmount Amount of jGLP being migrated.
     */
    function exchange(uint256 jGLPAmount, IIndividualBuffer.Deposit memory _depositData)
        external
        payable
        nonReentrant
    {
        require(!paused, "EasyMigrate: Contract is paused");

        // Gets jGLP amount and approves it to the GLP_ROUTER
        JGLP.transferFrom(msg.sender, address(this), jGLPAmount);
        JGLP.approve(address(GLP_ROUTER), jGLPAmount);

        // Redeems jGLP for USDC - This amount needs to be the same as the one in gmDepositData
        uint256 receivedUsdc = GLP_ROUTER.redeemGlpBasket(jGLPAmount, true, NATIVE_USDC, false);

        IERC20(NATIVE_USDC).approve(address(leverageRouter), receivedUsdc);

        individualBuffer.depositInternal(_depositData);
    }

    function pause(bool _pause) external {
        require(msg.sender == owner, "EasyMigrate: Only owner can pause");
        paused = _pause;
    }
}
