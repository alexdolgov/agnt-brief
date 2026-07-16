// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface IRestakingPool {
    event ValidatorRegistration(bytes[] _pubkeys);
    event RestakingPodAdded(address _restakingPod);
}
