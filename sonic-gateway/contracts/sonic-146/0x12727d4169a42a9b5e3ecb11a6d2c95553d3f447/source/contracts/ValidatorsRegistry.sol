// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {IUpdateVerifier} from "./interfaces/IUpdateVerifier.sol";
import {IStateOracle} from "./interfaces/IStateOracle.sol";

/// Validators registry is an update verifier which use its internal storage of validators.
/// To be owned by UpdateManager, to allow setting validators by signed updates.
/// @custom:security-contact security@fantom.foundation
contract ValidatorsRegistry is Ownable, IUpdateVerifier {

    mapping(address validatorId => uint256 weight) public validatorWeight;
    mapping(address validatorAddr => uint256 validatorId) public validatorId;
    uint256 public totalWeight;
    address[] public validatorAddress;
    IStateOracle public immutable stateOracle; // for threshold decreasing on stateOracle inactivity

    constructor(address _stateOracle, address _ownedBy) Ownable(_ownedBy) {
        stateOracle = IStateOracle(_stateOracle); // zero allowed (if no threshold decreasing should be applied)
        validatorAddress.push(); // avoid lastValidatorId underflow
    }

    function lastValidatorId() public view returns(uint256) {
        return validatorAddress.length - 1; // index 0 is not used
    }

    function setValidators(bytes calldata newValidatorsBytes) onlyOwner external {
        IUpdateVerifier.Validator[] memory newValidators = abi.decode(newValidatorsBytes, (IUpdateVerifier.Validator[]));
        uint256 total = totalWeight;
        for (uint16 i; i < newValidators.length; i++) {
            uint256 id = newValidators[i].id;
            address newAddr = newValidators[i].addr;
            uint256 newWeight = newValidators[i].weight;
            require(id != 0, "validator id cannot be 0");

            if (validatorAddress.length <= id) {
                // adding new validator id
                require(validatorId[newAddr] == 0, "setting duplicate address");
                extendValidatorsArray(id + 1);
                validatorAddress[id] = newAddr;
                validatorId[newAddr] = id;

            } else {
                // existing validator id
                address oldAddr = validatorAddress[id];
                total -= validatorWeight[oldAddr];

                if (oldAddr != newAddr) {
                    // setting new address (public key)
                    require(validatorId[newAddr] == 0, "setting duplicate address");
                    delete validatorWeight[oldAddr];
                    delete validatorId[oldAddr];
                    validatorAddress[id] = newAddr;
                    validatorId[newAddr] = id;
                }
            }

            validatorWeight[newAddr] = newWeight;
            total += newWeight;
        }
        totalWeight = total;
    }

    function extendValidatorsArray(uint256 newLength) private {
        // set validatorAddress.length
        assembly {
            sstore(validatorAddress.slot, newLength)
        }
    }

    /// Verify the state oracle update signatures
    function verifyUpdate(uint256 blockNum, bytes32 stateRoot, uint256 chainId, bytes calldata newValidators, address proofVerifier, address updateVerifier, address exitAdmin, bytes[] calldata signatures) external view returns (uint256[] memory) {
        bytes32 messageHash = keccak256(abi.encodePacked(uint8(0x19), uint8(0x00), msg.sender, blockNum, stateRoot, chainId, newValidators, proofVerifier, updateVerifier, exitAdmin));

        uint256 weight = 0;
        address lastSigner = address(0);
        uint256[] memory signers = new uint256[](signatures.length);

        for (uint16 i; i < signatures.length; i++) {
            address signer = ECDSA.recover(messageHash, signatures[i]);
            uint256 signerWeight = validatorWeight[signer];
            require(signerWeight > 0, "Invalid signer");
            require(signer > lastSigner, "Invalid signatures order"); // ensures signers uniqueness
            lastSigner = signer;
            weight += signerWeight;
            signers[i] = validatorId[signer];
        }

        if (weight > (totalWeight * 2 / 3)) {
            return signers; // fast path
        }
        // allow updating with lower quorum if the oracle is dying
        if (weight > getQuorum()) {
            return signers;
        }
        revert("Insufficient signatures weight");
    }

    function getQuorum() public view returns (uint256) {
        uint256 total = totalWeight;
        uint256 initialQuorum = total * 2 / 3; // 66%
        uint256 recoveryQuorum = total * 55 / 100; // 55%
        uint256 rebornQuorum = total / 3; // 33%

        if (address(stateOracle) == address(0)) {
            return initialQuorum; // threshold decreasing not enabled
        }
        uint256 lastUpdateTime = stateOracle.lastUpdateTime();
        if (lastUpdateTime == 0) {
            return initialQuorum; // state oracle not initialized yet
        }
        uint256 offlineTime = block.timestamp - lastUpdateTime;

        if (offlineTime <= 5 days) {
            return initialQuorum;
        }
        if (offlineTime <= 7 days) {
            return slope(initialQuorum, recoveryQuorum, offlineTime - 5 days, 2 days);
        }
        if (offlineTime <= 182 days) {
            return recoveryQuorum;
        }
        if (offlineTime <= 189 days) {
            return slope(recoveryQuorum, rebornQuorum, offlineTime - 182 days, 7 days);
        }
        return rebornQuorum;
    }

    function slope(uint256 maxOut, uint256 minOut, uint256 currentDuration, uint256 totalDuration) private pure returns (uint256) {
        uint256 slopeHeight = maxOut - minOut;
        return maxOut - (slopeHeight * currentDuration / totalDuration);
    }

}
