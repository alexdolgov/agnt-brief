// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

import { IVotingEscrow } from "../interfaces/IVotingEscrow.sol";
import { ICrvDepositor } from "../interfaces/ICrvDepositor.sol";

contract HyperThrustClaim is Ownable {
    using SafeERC20 for IERC20;

    /* --------------------------------------------------------------------------
     * Types 
    -------------------------------------------------------------------------- */

    struct Want {
        uint256 thrust;
        uint256 veThrust;
        uint256 hyper;
        uint256 hyperThrust;
    }

    struct Claim {
        address account;
        uint256 thrust;
        uint256 veThrust;
        uint256 hyper;
    }

    /* --------------------------------------------------------------------------
     * Storage 
    -------------------------------------------------------------------------- */

    uint256 public constant MIN_LOCK = 12 * 7 days; // 12 weeks

    bytes32 public root;
    address public immutable THRUST;
    address public immutable veTHRUST;
    address public immutable HYPER;
    address public immutable crvDepositor;

    // Mapping user => claimed (amount of thrust+veThrust+hyperThrust claimed)
    mapping(address => uint256) public claimed;

    /* --------------------------------------------------------------------------
     * Events 
    -------------------------------------------------------------------------- */

    event ClaimPartOne(
        address indexed account,
        uint256 thrust,
        uint256 hyper,
        uint256 veThrust,
        uint256 hyperThrust,
        uint256 hyperBoost
    );

    event ClaimPartTwo(address indexed account, uint256 thrust, uint256 hyper, uint256 veThrust, uint256 hyperThrust);

    event SetRoot(bytes32 root);

    /* --------------------------------------------------------------------------
     * Constructor  
    -------------------------------------------------------------------------- */

    constructor(
        bytes32 _root,
        address _thrust,
        address _veThrust,
        address _hyper,
        address _crvDepositor
    ) Ownable(msg.sender) {
        root = _root;
        THRUST = _thrust;
        veTHRUST = _veThrust;
        HYPER = _hyper;
        crvDepositor = _crvDepositor;
    }

    /* --------------------------------------------------------------------------
     * Claim Logic
    -------------------------------------------------------------------------- */

    /**
     *  Input validation logic
     *
     *  +----+--------------------------------+-----+-------------------------------+
     *  |    |              Want              |     |             Claim             |
     *  +----+--------------------------------+-----+-------------------------------+
     *  | 1. | Want.thrust                    | lte | Claim.thrust                  |
     *  | 2. | Want.thrust + Want.hyperThrust | lte | Claim.thrust + Claim.veThrust |
     *  | 3. | Want.hyper                     | eq  | Claim.hyper                   |
     *  | 4. | Want.thrust + Want.hyperThurst | gte | Claim.thrust                  |
     *  | 5. | Want.veThrust                  | eq  | ZERO                          |
     *  +----+--------------------------------+-----+-------------------------------+
     *
     *  Reasons
     *
     *  1. The amount of Thrust wanted must be less or equal than amount of Thrust in the claim
     *  2. The amount of Thrust and hyperThrust must be less than the total amount of Thrust and veThrust
     *  3. The user must claim all their hyper in the first part of the claim
     *       3a. This means the boost from locking is only available in the first claim
     *           and the boost is calculated as:
     *           boost = Claim.hyper * Want.hyperThrust / (Claim.thrust + Claim.veThrust)
     *  4. The user must claim the first 50% of their thrust either as THRUST or hyperTHRUST in the first claim
     *       4a. This means that they will just be left with claiming veTHRUST (or hyperTHRUST) in part 2
     *  5. The amount of veThrust must be ZERO.
     *
     *
     */
    function claimPartOne(
        Claim memory _claim,
        Want memory _want,
        bytes32[] memory _proof
    ) external {
        _requireValidClaim(msg.sender, _claim);

        require(claimed[msg.sender] == 0, "!claimed");
        require(_verifyClaimProof(_claim, _proof), "!proof");

        claimed[msg.sender] = _want.thrust + _want.hyperThrust;

        // prettier-ignore
        {
            require(_want.thrust                        <= _claim.thrust,                       "1. failed");
            require(_want.thrust + _want.hyperThrust    <= _claim.thrust + _claim.veThrust,     "2. failed");
            require(_want.hyper                         == _claim.hyper,                        "3. failed");
            require(_want.thrust + _want.hyperThrust    >= _claim.thrust,                       "4. failed");
            require(_want.veThrust                      == 0,                                   "5. failed");
        }

        uint256 hyperBoost = _getHyperBoost(_want, _claim);

        _safeTransfer(THRUST, msg.sender, _want.thrust);
        _safeTransfer(HYPER, msg.sender, _want.hyper + hyperBoost);
        _mintHyperThrust(msg.sender, _want.hyperThrust);

        emit ClaimPartOne(msg.sender, _want.thrust, _want.hyper, _want.veThrust, _want.hyperThrust, hyperBoost);
    }

    /**
     *  Input validation logic
     *
     *  +----+----------------------------------+----+----------------+
     *  |    |               Want               |    |     Claim      |
     *  +----+----------------------------------+----+----------------+
     *  | 1. | Want.hyper                       | eq | ZERO           |
     *  | 2. | Want.thrust                      | eq | ZERO           |
     *  | 3. | Want.hyperTHRUST + Want.veTHRUST | eq | Claim.veTHRUST |
     *  +----+----------------------------------+----+----------------+
     *
     *  Reasons
     *
     *  1. All the HYPER would have been claimed in the first part
     *  2. All the THRUST would have been claimed in the first part
     *  3. The user must claim all of their veTHRUST balance as either hyperTHRUST or veTHRUST
     *      3a. We also need to verify they have a minimum of a 13 week lock
     *
     */
    function claimPartTwo(
        Claim memory _claim,
        Want memory _want,
        bytes32[] memory _proof
    ) external {
        _requireValidClaim(msg.sender, _claim);

        require(claimed[msg.sender] > 0, "!partOne");
        require(_verifyClaimProof(_claim, _proof), "!proof");

        uint256 totalWant = _want.hyperThrust + _want.veThrust + claimed[msg.sender];
        uint256 totalClaim = _claim.thrust + _claim.veThrust;
        require(totalWant == totalClaim, "!claimed");

        uint256 usrClaimed = claimed[msg.sender];
        claimed[msg.sender] = usrClaimed + _want.hyperThrust + _want.veThrust;

        uint256 remaining = (_claim.veThrust + _claim.thrust) - usrClaimed;

        // prettier-ignore
        {
            require(_want.hyper                         == 0,               "1. failed");
            require(_want.thrust                        == 0,               "2. failed");
            require(_want.hyperThrust + _want.veThrust  == remaining,       "3. failed");
        }

        _depositVeFor(msg.sender, _want.veThrust);
        _mintHyperThrust(msg.sender, _want.hyperThrust);

        emit ClaimPartTwo(msg.sender, _want.thrust, _want.hyper, _want.veThrust, _want.hyperThrust);
    }

    /* --------------------------------------------------------------------------
     * Utils Logic 
    -------------------------------------------------------------------------- */

    function _requireValidClaim(address _sender, Claim memory _claim) internal {
        require(_claim.account == _sender, "!account");
        require(_claim.thrust > 0, "!thrust");
        require(_claim.veThrust == _claim.thrust, "thrust!=veThrust");
    }

    function _verifyClaimProof(Claim memory _claim, bytes32[] memory _proof) internal view returns (bool) {
        bytes32 node = keccak256(abi.encodePacked(msg.sender, _claim.thrust, _claim.veThrust, _claim.hyper));
        return MerkleProof.verify(_proof, root, node);
    }

    function _depositVeFor(address _account, uint256 _amount) internal {
        if (_amount > 0) {
            uint256 lockEnd = IVotingEscrow(veTHRUST).locked(_account).end;
            require(lockEnd >= block.timestamp + MIN_LOCK, "!lockEnd");

            IERC20(THRUST).safeIncreaseAllowance(veTHRUST, _amount);
            IVotingEscrow(veTHRUST).deposit_for(_account, _amount);
        }
    }

    function _safeTransfer(
        address _token,
        address _account,
        uint256 _amount
    ) internal {
        if (_amount > 0) {
            IERC20(_token).safeTransfer(_account, _amount);
        }
    }

    function _mintHyperThrust(address _account, uint256 _amount) internal {
        if (_amount > 0) {
            IERC20(THRUST).safeIncreaseAllowance(crvDepositor, _amount);
            ICrvDepositor(crvDepositor).depositFor(_account, _amount, true, address(0));
        }
    }

    function _getHyperBoost(Want memory _want, Claim memory _claim) internal pure returns (uint256) {
        uint256 totalThrust = _claim.thrust + _claim.veThrust;
        return (_want.hyper * _want.hyperThrust) / totalThrust;
    }

    /* --------------------------------------------------------------------------
     * Owner Logic
    -------------------------------------------------------------------------- */

    function rescueTokens(
        address _token,
        address _to,
        uint256 _amount
    ) external onlyOwner {
        IERC20(_token).safeTransfer(_to, _amount);
    }

    function setRoot(bytes32 _root) external onlyOwner {
        root = _root;
        emit SetRoot(_root);
    }
}
