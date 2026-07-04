pragma solidity =0.5.16;

import './interfaces/IBlast.sol';
import './interfaces/IBlastPoints.sol';
import './interfaces/IBlastManager.sol';
import './interfaces/ISwapV2Factory.sol';

contract BlastManagerFromFactory is IBlastManager {
    IBlast public constant BLAST = IBlast(0x4300000000000000000000000000000000000002);
    address public manager;

    modifier onlyManager() {
        require(msg.sender == ISwapV2Factory(manager).feeToSetter(), 'FORBIDDEN');
        _;
    }

    constructor() public {
        manager = msg.sender;
        BLAST.configureAutomaticYield();
        BLAST.configureClaimableGas();
    }

    function claimGas(address recipient, bool isMax) external onlyManager returns (uint256) {
        if (isMax) {
            return BLAST.claimMaxGas(address(this), recipient);
        } else {
            return BLAST.claimAllGas(address(this), recipient);
        }
    }

    function setManager(address _manager) external onlyManager {
        manager = _manager;
    }

    function setGasMode(address blastGas) external onlyManager {
        IBlast(blastGas).configureClaimableGas();
    }

    function setPointsOperator(address blastPoints, address operator) external onlyManager {
        // This method can be called only once, and operator must be an EOA.
        IBlastPoints(blastPoints).configurePointsOperator(operator);
    }
}
