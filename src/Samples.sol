// SPDX-License-Identifier: Unlicense

pragma solidity 0.8.11;

// Welcome to the 🧪 Optimizooor's Lab!
//
// Get started:
// 1. Set  Solidity version above
// 2. Set `optimizer`       in `foundry.toml`
// 3. Set `optimizer_runs`  in `foundry.toml`
//
// Optimize! Run experiments with `forge test`.

// Samples for: ____________

abstract contract SharedSetup {

}

// Unoptimized sample
contract Sample0 is SharedSetup {
    function measureGas() external {
        uint256 i;
        i++;
    }
}

contract Sample1 is SharedSetup {
    function measureGas() external {
        uint256 i;
        ++i;
    }
}

contract Sample2 is SharedSetup {
    function measureGas() external {
        uint256 i;
        i = i + 1;
    }
}

contract Sample3 is SharedSetup {
    function measureGas() external {
        uint256 i;
        i += 1;
    }
}

contract Sample4 is SharedSetup {
    function measureGas() external {}
}

contract Sample5 is SharedSetup {
    function measureGas() external {}
}

// Generated from https://github.com/ZeroEkkusu/optimizooors-lab

// Customize console output
abstract contract Labels {
    string label0 = "Increment with `i++`";
    string label1 = "Use `++i` instead";
    string label2 = "Use `i = i + 1` instead";
    string label3 = "Use `i += 1` instead";
    string label4 = "";
    string label5 = "";
}
