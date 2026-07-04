// SPDX-License-Identifier: AGPL-3.0-or-later
//
// DssDeploy.sol
//
// Copyright (C) 2018-2022 Dai Foundation
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.6.12;

import {DSAuth, DSAuthority} from "../gov/auth.sol";
import {DSPause} from "../gov/DSPause.sol";
import {DSProxyFactory} from "../proxy/proxy.sol";
import {Dog} from "../dss/dog.sol";
import {ESM} from "../esm/ESM.sol";
import {End} from "../esm/end.sol";
import {Flopper} from "../dss/flop.sol";
import {Jug} from "../dss/jug.sol";
import {LinearDecrease,
StairstepExponentialDecrease,
ExponentialDecrease} from "../dss/abaci.sol";
import {ProxyRegistry} from "../proxy/ProxyRegistry.sol";
import {Spotter} from "../dss/spot.sol";
import {UsddJoin, GemJoin} from "../dss/join.sol";
import {Usdd} from "../dss/usdd.sol";
import {Vat} from "../dss/vat.sol";
import {Vow} from "../dss/vow.sol";
import {Flapper} from "../dss/flap.sol";
import {Clipper} from "../dss/clip.sol";
import {Pot} from "../dsr/pot.sol";

contract VatFab {
    function newVat(address owner) public returns (Vat vat) {
        vat = new Vat();
        vat.rely(owner);
        vat.deny(address(this));
    }
}

contract JugFab {
    function newJug(address owner, address vat) public returns (Jug jug) {
        jug = new Jug(vat);
        jug.rely(owner);
        jug.deny(address(this));
    }
}

contract VowFab {
    function newVow(address owner, address vat, address flap, address flop) public returns (Vow vow) {
        vow = new Vow(vat, flap, flop);
        vow.rely(owner);
        vow.deny(address(this));
    }
}

contract DogFab {
    function newDog(address owner, address vat) public returns (Dog dog) {
        dog = new Dog(vat);
        dog.rely(owner);
        dog.deny(address(this));
    }
}

contract UsddFab {
    function newUsdd(address owner, uint chainId) public returns (Usdd usdd) {
        usdd = new Usdd(chainId);
        usdd.rely(owner);
        usdd.deny(address(this));
    }
}

contract UsddJoinFab {
    function newUsddJoin(address vat, address usdd) public returns (UsddJoin usddJoin) {
        usddJoin = new UsddJoin(vat, usdd);
    }
}

contract GemJoinFab {
    function newGemJoin(address vat, bytes32 ilk, address gem) public returns (GemJoin gemJoin) {
        gemJoin = new GemJoin(vat, ilk, gem);
    }
}

contract FlapFab {
    function newFlap(address owner, address usddJoin, address receiver) public returns (Flapper flap) {
        flap = new Flapper(usddJoin, receiver);
        flap.rely(owner);
        flap.deny(address(this));
    }
}

contract FlopFab {
    function newFlop(address owner, address vat, address gov) public returns (Flopper flop) {
        flop = new Flopper(vat, gov);
        flop.rely(owner);
        flop.deny(address(this));
    }
}

contract ClipFab {
    function newClip(address owner, address vat, address spotter, address dog, bytes32 ilk) public returns (Clipper clip) {
        clip = new Clipper(vat, spotter, dog, ilk);
        clip.rely(owner);
        clip.deny(address(this));
    }
}

contract CalcFab {
    function newLinearDecrease(address owner) public returns (LinearDecrease calc) {
        calc = new LinearDecrease();
        calc.rely(owner);
        calc.deny(address(this));
    }

    function newStairstepExponentialDecrease(address owner) public returns (StairstepExponentialDecrease calc) {
        calc = new StairstepExponentialDecrease();
        calc.rely(owner);
        calc.deny(address(this));
    }

    function newExponentialDecrease(address owner) public returns (ExponentialDecrease calc) {
        calc = new ExponentialDecrease();
        calc.rely(owner);
        calc.deny(address(this));
    }
}

contract SpotFab {
    function newSpotter(address owner, address vat) public returns (Spotter spotter) {
        spotter = new Spotter(vat);
        spotter.rely(owner);
        spotter.deny(address(this));
    }
}

contract PotFab {
    function newPot(address owner, address vat) public returns (Pot pot) {
        pot = new Pot(vat);
        pot.rely(owner);
        pot.deny(address(this));
    }
}

contract EndFab {
    function newEnd(address owner) public returns (End end) {
        end = new End();
        end.rely(owner);
        end.deny(address(this));
    }
}

contract ESMFab {
    function newESM(address gov, address end, address proxy, uint min) public returns (ESM esm) {
        esm = new ESM(gov, end, proxy, min);
        esm.rely(proxy);
        esm.deny(address(this));
    }
}

contract PauseFab {
    function newPause(uint delay, address owner, address authority) public returns(DSPause pause) {
        pause = new DSPause(delay, owner, DSAuthority(authority));
    }
}

contract ProxyRegistryFab {
    function newProxyRegistry() public returns(ProxyRegistry proxyRegistry) {
        DSProxyFactory proxyFactory = new DSProxyFactory();
        proxyRegistry = new ProxyRegistry(address(proxyFactory));
    }
}

contract DssDeploy is DSAuth {
    VatFab     public vatFab;
    JugFab     public jugFab;
    VowFab     public vowFab;
    DogFab     public dogFab;
    UsddFab     public usddFab;
    UsddJoinFab public usddJoinFab;
    GemJoinFab public gemJoinFab;
    FlapFab    public flapFab;
    FlopFab    public flopFab;
    ClipFab    public clipFab;
    CalcFab    public calcFab;
    SpotFab    public spotFab;
    PotFab     public potFab;
    EndFab     public endFab;
    ESMFab     public esmFab;
    PauseFab   public pauseFab;
    ProxyRegistryFab public proxyRegistryFab;

    Vat     public vat;
    Jug     public jug;
    Vow     public vow;
    Dog     public dog;
    Usdd     public usdd;
    UsddJoin public usddJoin;
    GemJoin public gemJoin;
    Flapper public flap;
    Flopper public flop;
    Spotter public spotter;
    Pot     public pot;
    End     public end;
    ESM     public esm;
    DSPause public pause;
    ProxyRegistry public proxyRegistry;

    mapping(bytes32 => Ilk) public ilks;

    uint8 public step = 0;

    uint256 constant ONE = 10 ** 27;

    struct Ilk {
        Clipper clip;
        address join;
    }

    function addFabs1(
        VatFab vatFab_,
        JugFab jugFab_,
        VowFab vowFab_,
        DogFab dogFab_,
        UsddFab usddFab_,
        UsddJoinFab usddJoinFab_
    ) public auth {
        require(address(vatFab) == address(0), "Fabs 1 already saved");
        vatFab = vatFab_;
        jugFab = jugFab_;
        vowFab = vowFab_;
        dogFab = dogFab_;
        usddFab = usddFab_;
        usddJoinFab = usddJoinFab_;
    }

    function addFabs2(
        FlapFab flapFab_,
        FlopFab flopFab_,
        ClipFab clipFab_,
        CalcFab calcFab_,
        SpotFab spotFab_,
        PotFab potFab_,
        EndFab endFab_,
        ESMFab esmFab_,
        PauseFab pauseFab_,
        ProxyRegistryFab proxyRegistryFab_
    ) public auth {
        require(address(flapFab) == address(0), "Fabs 2 already saved");
        flapFab = flapFab_;
        flopFab = flopFab_;
        clipFab = clipFab_;
        calcFab = calcFab_;
        spotFab = spotFab_;
        potFab = potFab_;
        endFab = endFab_;
        esmFab = esmFab_;
        pauseFab = pauseFab_;
        proxyRegistryFab = proxyRegistryFab_;
    }

    function rad(uint wad) internal pure returns (uint) {
        return wad * 10 ** 27;
    }

    function deployVat() public auth {
        require(address(vatFab) != address(0), "Missing Fabs 1");
        require(address(vat) == address(0), "VAT already deployed");
        vat = vatFab.newVat(address(this));
        spotter = spotFab.newSpotter(address(this), address(vat));

        // Internal auth
        vat.rely(address(spotter));
    }

    function deployUsdd(uint256 chainId) public auth {
        require(address(vat) != address(0), "Missing previous step");

        // Deploy
        usdd = usddFab.newUsdd(address(this), chainId);
        usddJoin = usddJoinFab.newUsddJoin(address(vat), address(usdd));
        usdd.rely(address(usddJoin));
    }

    function deployTaxation() public auth {
        require(address(vat) != address(0), "Missing previous step");

        // Deploy
        jug = jugFab.newJug(address(this), address(vat));
        pot = potFab.newPot(address(this), address(vat));

        // Internal auth
        vat.rely(address(jug));
        vat.rely(address(pot));
    }

    function deployAuctions(address gov, address receiver) public auth {
        require(gov != address(0), "Missing GOV address");
        require(address(jug) != address(0), "Missing previous step");

        flap = flapFab.newFlap(address(this), address(usddJoin), receiver);
        flop = flopFab.newFlop(address(this), address(vat), gov);
        vow = vowFab.newVow(address(this), address(vat), address(flap), address(flop));

        // Internal references set up
        jug.file("vow", address(vow));
        pot.file("vow", address(vow));

        // Internal auth
        vat.rely(address(flop));
        flap.rely(address(vow));
        flop.rely(address(vow));
    }

    function deployLiquidator() public auth {
        require(address(vow) != address(0), "Missing previous step");

        // Deploy
        dog = dogFab.newDog(address(this), address(vat));

        // Internal references set up
        dog.file("vow", address(vow));

        // Internal auth
        vat.rely(address(dog));
        vow.rely(address(dog));
    }

    function deployPause(uint delay, address owner, address authority) public auth {
        require(address(usdd) != address(0), "Missing previous step");
        require(address(end) != address(0), "Missing previous step");

        pause = pauseFab.newPause(delay, owner, authority);

        vat.rely(address(pause.proxy()));
        dog.rely(address(pause.proxy()));
        vow.rely(address(pause.proxy()));
        jug.rely(address(pause.proxy()));
        spotter.rely(address(pause.proxy()));
        pot.rely(address(pause.proxy()));
        flap.rely(address(pause.proxy()));
        flop.rely(address(pause.proxy()));
        end.rely(address(pause.proxy()));
    }

    function deployProxy() public auth {
        require(address(proxyRegistry) == address(0), "PROXYR already deployed");
        proxyRegistry = proxyRegistryFab.newProxyRegistry();
    }

    function deployEnd() public auth {
        // Deploy
        end = endFab.newEnd(address(this));

        // Internal references set up
        end.file("vat", address(vat));
        end.file("dog", address(dog));
        end.file("vow", address(vow));
        end.file("spot", address(spotter));
        end.file("pot", address(pot));

        // Internal auth
        vat.rely(address(end));
        dog.rely(address(end));
        vow.rely(address(end));
        spotter.rely(address(end));
        pot.rely(address(end));
    }

    function deployESM(address gov, uint256 min) public auth {
        require(address(pause) != address(0), "Missing previous step");

        // Deploy ESM
        esm = esmFab.newESM(gov, address(end), address(pause.proxy()), min);
        end.rely(address(esm));
        vat.rely(address(esm));
    }

    function deployCollateralClip(bytes32 ilk, address join, address pip, address calc) public auth {
        require(ilk != bytes32(""), "Missing ilk name");
        require(join != address(0), "Missing join address");
        require(pip != address(0), "Missing pip address");
        require(address(pause) != address(0), "Missing previous step");

        // Deploy
        ilks[ilk].clip = clipFab.newClip(address(this), address(vat), address(spotter), address(dog), ilk);
        ilks[ilk].join = join;
        Spotter(spotter).file(ilk, "pip", address(pip)); // Set pip

        // Internal references set up
        dog.file(ilk, "clip", address(ilks[ilk].clip));
        ilks[ilk].clip.file("vow", address(vow));

        // Use calc with safe default if not configured
        if (calc == address(0)) {
            calc = address(calcFab.newLinearDecrease(address(this)));
            LinearDecrease(calc).file(bytes32("tau"), 1 hours);
        }
        ilks[ilk].clip.file("calc", calc);
        vat.init(ilk);
        jug.init(ilk);

        // Internal auth
        vat.rely(join);
        vat.rely(address(ilks[ilk].clip));
        dog.rely(address(ilks[ilk].clip));
        ilks[ilk].clip.rely(address(dog));
        ilks[ilk].clip.rely(address(end));
        ilks[ilk].clip.rely(address(esm));
        ilks[ilk].clip.rely(address(pause.proxy()));
    }

    function releaseAuth() public auth {
        vat.deny(address(this));
        dog.deny(address(this));
        vow.deny(address(this));
        jug.deny(address(this));
        usdd.deny(address(this));
        spotter.deny(address(this));
        pot.deny(address(this));
        flap.deny(address(this));
        flop.deny(address(this));
        end.deny(address(this));
    }

    function releaseAuthClip(bytes32 ilk) public auth {
        ilks[ilk].clip.deny(address(this));
    }
}